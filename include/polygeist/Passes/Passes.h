#ifndef POLYGEIST_DIALECT_POLYGEIST_PASSES_H
#define POLYGEIST_DIALECT_POLYGEIST_PASSES_H

#include "mlir/Conversion/LLVMCommon/LoweringOptions.h"
#include "mlir/Pass/Pass.h"
#include <memory>

enum PolygeistAlternativesMode { PAM_Static, PAM_PGO_Profile, PAM_PGO_Opt };
enum PolygeistGPUStructureMode {
  PGSM_Discard,
  PGSM_BlockThreadWrappers,
  PGSM_ThreadNoop,
  PGSM_BlockThreadNoops
};

namespace mlir {
class PatternRewriter;
class RewritePatternSet;
class DominanceInfo;
namespace polygeist {
std::unique_ptr<Pass> createParallelLICMPass();
std::unique_ptr<Pass> createMem2RegPass();
std::unique_ptr<Pass> createLoopRestructurePass();
std::unique_ptr<Pass> createInnerSerializationPass();
std::unique_ptr<Pass> createSerializationPass();
std::unique_ptr<Pass> replaceAffineCFGPass();
std::unique_ptr<Pass> createOpenMPOptPass();
std::unique_ptr<Pass> createCanonicalizeForPass();
std::unique_ptr<Pass> createRaiseSCFToAffinePass();
std::unique_ptr<Pass> createCPUifyPass(StringRef method = "");
std::unique_ptr<Pass> createBarrierRemovalContinuation();
std::unique_ptr<Pass> detectReductionPass();
std::unique_ptr<Pass> createRemoveTrivialUsePass();
std::unique_ptr<Pass> createParallelLowerPass(
    bool wrapParallelOps = false,
    PolygeistGPUStructureMode gpuKernelStructureMode = PGSM_Discard);
std::unique_ptr<Pass> createConvertCudaRTtoCPUPass();
std::unique_ptr<Pass> createConvertCudaRTtoGPUPass();
std::unique_ptr<Pass> createConvertCudaRTtoHipRTPass();
std::unique_ptr<Pass> createSCFParallelLoopUnrollPass(int unrollFactor = 2);
std::unique_ptr<Pass>
createConvertPolygeistToLLVMPass(const LowerToLLVMOptions &options,
                                 bool useCStyleMemRef, bool onlyGpuModules,
                                 std::string gpuTarget);
std::unique_ptr<Pass> createConvertPolygeistToLLVMPass();
std::unique_ptr<Pass> createForBreakToWhilePass();
std::unique_ptr<Pass>
createConvertParallelToGPUPass1(std::string arch = "sm_60");
std::unique_ptr<Pass>
createConvertParallelToGPUPass2(bool emitGPUKernelLaunchBounds = true);
std::unique_ptr<Pass> createMergeGPUModulesPass();
std::unique_ptr<Pass> createGpuSerializeToCubinPass(
    StringRef arch, StringRef features, int llvmOptLevel, int ptxasOptLevel,
    std::string ptxasPath, std::string libDevicePath, bool outputIntermediate);
std::unique_ptr<Pass>
createGpuSerializeToHsacoPass(StringRef arch, StringRef features,
                              int llvmOptLevel, int hsaOptLevel,
                              std::string rocmPath, bool outputIntermediate);

void registerGpuSerializeToCubinPass();
void registerGpuSerializeToHsacoPass();

void populateForBreakToWhilePatterns(RewritePatternSet &patterns);
} // namespace polygeist
} // namespace mlir

void fully2ComposeAffineMapAndOperands(
    mlir::PatternRewriter &rewriter, mlir::AffineMap *map,
    llvm::SmallVectorImpl<mlir::Value> *operands, mlir::DominanceInfo &DI);
bool isValidIndex(mlir::Value val);

namespace mlir {
// Forward declaration from Dialect.h
template <typename ConcreteDialect>
void registerDialect(DialectRegistry &registry);

namespace arith {
class ArithDialect;
} // end namespace arith

namespace scf {
class SCFDialect;
} // end namespace scf

namespace memref {
class MemRefDialect;
} // end namespace memref

namespace func {
class FuncDialect;
}

class AffineDialect;
namespace LLVM {
class LLVMDialect;
}

#define GEN_PASS_REGISTRATION
#include "polygeist/Passes/Passes.h.inc"

} // end namespace mlir

#endif // POLYGEIST_DIALECT_POLYGEIST_PASSES_H
