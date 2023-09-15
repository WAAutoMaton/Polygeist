//===- PlutoTransform.cc - Transform MLIR code by PLUTO -------------------===//
//
// This file implements the transformation passes on MLIR using PLUTO.
//
//===----------------------------------------------------------------------===//

#include "polymer/Transforms/PlutoTransform.h"
#include "polymer/Support/OslScop.h"
#include "polymer/Support/OslScopStmtOpSet.h"
#include "polymer/Support/OslSymbolTable.h"
#include "polymer/Support/ScopStmt.h"
#include "polymer/Target/OpenScop.h"

#include "pluto/internal/pluto.h"
#include "pluto/osl_pluto.h"
#include "pluto/pluto.h"

#include "mlir/Conversion/AffineToStandard/AffineToStandard.h"
#include "mlir/Dialect/Affine/Analysis/AffineAnalysis.h"
#include "mlir/Dialect/Affine/Analysis/AffineStructures.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Affine/IR/AffineValueMap.h"
#include "mlir/Dialect/Affine/Utils.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/BlockAndValueMapping.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/OpImplementation.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/IR/Types.h"
#include "mlir/IR/Value.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Transforms/Passes.h"

using namespace mlir;
using namespace llvm;
using namespace polymer;

#define DEBUG_TYPE "pluto-opt"

namespace {
struct PlutoOptPipelineOptions
    : public mlir::PassPipelineOptions<PlutoOptPipelineOptions> {
  Option<std::string> dumpClastAfterPluto{
      *this, "dump-clast-after-pluto",
      llvm::cl::desc("File name for dumping the CLooG AST (clast) after Pluto "
                     "optimization.")};
  Option<bool> parallelize{*this, "parallelize",
                           llvm::cl::desc("Enable parallelization from Pluto."),
                           llvm::cl::init(false)};
  Option<bool> debug{*this, "debug",
                     llvm::cl::desc("Enable moredebug in Pluto."),
                     llvm::cl::init(false)};
  Option<bool> generateParallel{
      *this, "gen-parallel", llvm::cl::desc("Generate parallel affine loops."),
      llvm::cl::init(false)};

  Option<int> cloogf{*this, "cloogf", cl::desc("-cloogf option."),
                     cl::init(-1)};
  Option<int> cloogl{*this, "cloogl", cl::desc("-cloogl option."),
                     cl::init(-1)};
  Option<bool> diamondTiling{*this, "diamond-tiling",
                             cl::desc("Enable diamond tiling"),
                             cl::init(false)};
};

} // namespace

/// The main function that implements the Pluto based optimization.
/// TODO: transform options?
static mlir::func::FuncOp plutoTransform(mlir::func::FuncOp f, OpBuilder &rewriter,
                                   std::string dumpClastAfterPluto,
                                   bool parallelize = false, bool debug = false,
                                   int cloogf = -1, int cloogl = -1,
                                   bool diamondTiling = false) {
  LLVM_DEBUG(dbgs() << "Pluto transforming: \n");
  LLVM_DEBUG(f.dump());

  PlutoContext *context = pluto_context_alloc();
  OslSymbolTable srcTable, dstTable;

  std::unique_ptr<OslScop> scop = createOpenScopFromFuncOp(f, srcTable);
  if (!scop)
    return nullptr;
  if (scop->getNumStatements() == 0)
    return nullptr;

  // Should use isldep, candl cannot work well for this case.
  context->options->silent = !debug;
  context->options->moredebug = debug;
  context->options->debug = debug;
  context->options->isldep = 1;
  context->options->readscop = 1;

  context->options->identity = 0;
  context->options->parallel = parallelize;
  context->options->unrolljam = 0;
  context->options->prevector = 0;
  context->options->diamondtile = diamondTiling;

  if (cloogf != -1)
    context->options->cloogf = cloogf;
  if (cloogl != -1)
    context->options->cloogl = cloogl;

  PlutoProg *prog = osl_scop_to_pluto_prog(scop->get(), context);
  pluto_schedule_prog(prog);
  pluto_populate_scop(scop->get(), prog, context);

  if (debug) { // Otherwise things dumped afterwards will mess up.
    fflush(stderr);
    fflush(stdout);
  }

  osl_scop_print(stderr, scop->get());

  const char *dumpClastAfterPlutoStr = nullptr;
  if (!dumpClastAfterPluto.empty())
    dumpClastAfterPlutoStr = dumpClastAfterPluto.c_str();

  mlir::ModuleOp m = dyn_cast<mlir::ModuleOp>(f->getParentOp());
  SmallVector<DictionaryAttr> argAttrs;
  f.getAllArgAttrs(argAttrs);

  mlir::func::FuncOp g = cast<mlir::func::FuncOp>(createFuncOpFromOpenScop(
      std::move(scop), m, dstTable, rewriter.getContext(), prog,
      dumpClastAfterPlutoStr));
  g.setAllArgAttrs(argAttrs);

  pluto_context_free(context);
  return g;
}

namespace {
class PlutoTransformPass
    : public mlir::PassWrapper<PlutoTransformPass,
                               OperationPass<mlir::ModuleOp>> {
  std::string dumpClastAfterPluto = "";
  bool parallelize = false;
  bool debug = false;
  int cloogf = -1;
  int cloogl = -1;
  bool diamondTiling = false;

public:
  PlutoTransformPass() = default;
  PlutoTransformPass(const PlutoTransformPass &pass) {}
  PlutoTransformPass(const PlutoOptPipelineOptions &options)
      : dumpClastAfterPluto(options.dumpClastAfterPluto),
        parallelize(options.parallelize), debug(options.debug),
        cloogf(options.cloogf), cloogl(options.cloogl),
        diamondTiling(options.diamondTiling) {}

  void runOnOperation() override {
    mlir::ModuleOp m = getOperation();
    mlir::OpBuilder b(m.getContext());

    SmallVector<mlir::func::FuncOp, 8> funcOps;
    llvm::DenseMap<mlir::func::FuncOp, mlir::func::FuncOp> funcMap;

    m.walk([&](mlir::func::FuncOp f) {
      if (!f->getAttr("scop.stmt") && !f->hasAttr("scop.ignored")) {
        funcOps.push_back(f);
      }
    });

    for (mlir::func::FuncOp f : funcOps)
      if (mlir::func::FuncOp g =
              plutoTransform(f, b, dumpClastAfterPluto, parallelize, debug,
                             cloogf, cloogl, diamondTiling)) {
        funcMap[f] = g;
        g.setPublic();
        g->setAttrs(f->getAttrs());
      }

    // Finally, we delete the definition of the original function, and make the
    // Pluto optimized version have the same name.
    for (const auto &it : funcMap) {
      mlir::func::FuncOp from, to;
      std::tie(from, to) = it;

      to.setName(std::string(from.getName()));
      from.erase();
    }
  }
};

} // namespace

// -------------------------- PlutoParallelizePass ----------------------------

/// Find a single affine.for with scop.parallelizable attr.
static mlir::AffineForOp findParallelizableLoop(mlir::func::FuncOp f) {
  mlir::AffineForOp ret = nullptr;
  f.walk([&ret](mlir::AffineForOp forOp) {
    if (!ret && forOp->hasAttr("scop.parallelizable"))
      ret = forOp;
  });
  return ret;
}

/// Turns a single affine.for with scop.parallelizable into affine.parallel. The
/// design of this function is almost the same as affineParallelize. The
/// differences are:
///
/// 1. It is not necessary to check whether the parentOp of a parallelizable
/// affine.for has the AffineScop trait.
static void plutoParallelize(mlir::AffineForOp forOp, OpBuilder b) {
  assert(forOp->hasAttr("scop.parallelizable"));

  OpBuilder::InsertionGuard guard(b);
  b.setInsertionPointAfter(forOp);

  Location loc = forOp.getLoc();

  // If a loop has a 'max' in the lower bound, emit it outside the parallel loop
  // as it does not have implicit 'max' behavior.
  AffineMap lowerBoundMap = forOp.getLowerBoundMap();
  ValueRange lowerBoundOperands = forOp.getLowerBoundOperands();
  AffineMap upperBoundMap = forOp.getUpperBoundMap();
  ValueRange upperBoundOperands = forOp.getUpperBoundOperands();

  // Creating empty 1-D affine.parallel op.
  mlir::AffineParallelOp newPloop = b.create<mlir::AffineParallelOp>(
      loc, llvm::None, llvm::None, lowerBoundMap, lowerBoundOperands,
      upperBoundMap, upperBoundOperands, 1);
  // Steal the body of the old affine for op and erase it.
  newPloop.region().takeBody(forOp.region());

  for (auto user : forOp->getUsers()) {
    user->dump();
  }
  forOp.erase();
}

/// Need to check whether the bounds of the for loop are using top-level values
/// as operands. If not, then the loop cannot be directly turned into
/// affine.parallel.
static bool isBoundParallelizable(mlir::AffineForOp forOp, bool isUpper) {
  llvm::SmallVector<mlir::Value, 4> mapOperands =
      isUpper ? forOp.getUpperBoundOperands() : forOp.getLowerBoundOperands();

  for (mlir::Value operand : mapOperands)
    if (!isTopLevelValue(operand))
      return false;
  return true;
}
static bool isBoundParallelizable(mlir::AffineForOp forOp) {
  return isBoundParallelizable(forOp, true) &&
         isBoundParallelizable(forOp, false);
}

/// Iteratively replace affine.for with scop.parallelizable with
/// affine.parallel.
static void plutoParallelize(mlir::func::FuncOp f, OpBuilder b) {
  mlir::AffineForOp forOp = nullptr;
  while ((forOp = findParallelizableLoop(f)) != nullptr) {
    if (!isBoundParallelizable(forOp))
      llvm_unreachable(
          "Loops marked as parallelizable should have parallelizable bounds.");
    plutoParallelize(forOp, b);
  }
}

namespace {
/// Turn affine.for marked as scop.parallelizable by Pluto into actual
/// affine.parallel operation.
struct PlutoParallelizePass
    : public mlir::PassWrapper<PlutoParallelizePass,
                               OperationPass<mlir::func::FuncOp>> {
  void runOnOperation() override {
    FuncOp f = getOperation();
    OpBuilder b(f.getContext());

    plutoParallelize(f, b);
  }
};
} // namespace

static void dedupIndexCast(FuncOp f) {
  if (f.getBlocks().empty())
    return;

  Block &entry = f.getBlocks().front();
  llvm::MapVector<Value, Value> argToCast;
  SmallVector<Operation *> toErase;
  for (auto &op : entry) {
    if (auto indexCast = dyn_cast<arith::IndexCastOp>(&op)) {
      auto arg = indexCast.getOperand().dyn_cast<BlockArgument>();
      if (argToCast.count(arg)) {
        LLVM_DEBUG(dbgs() << "Found duplicated index_cast: " << indexCast
                          << '\n');
        indexCast.replaceAllUsesWith(argToCast.lookup(arg));
        toErase.push_back(indexCast);
      } else {
        argToCast[arg] = indexCast;
      }
    }
  }

  for (auto op : toErase)
    op->erase();
}

namespace {
struct DedupIndexCastPass
    : public mlir::PassWrapper<DedupIndexCastPass,
                               OperationPass<mlir::func::FuncOp>> {
  void runOnOperation() override { dedupIndexCast(getOperation()); }
};
} // namespace

void polymer::registerPlutoTransformPass() {
  PassPipelineRegistration<PlutoOptPipelineOptions>(
      "pluto-opt", "Optimization implemented by PLUTO.",
      [](OpPassManager &pm, const PlutoOptPipelineOptions &pipelineOptions) {
        pm.addPass(std::make_unique<DedupIndexCastPass>());
        pm.addPass(createCanonicalizerPass());
        pm.addPass(std::make_unique<PlutoTransformPass>(pipelineOptions));
        pm.addPass(createCanonicalizerPass());
        if (pipelineOptions.generateParallel) {
          pm.addPass(std::make_unique<PlutoParallelizePass>());
          pm.addPass(createCanonicalizerPass());
        }
      });
}
