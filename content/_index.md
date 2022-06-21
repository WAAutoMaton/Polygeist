---
date: 2017-10-19T15:26:15Z
lastmod: 2019-10-26T15:26:15Z
publishdate: 2018-11-23T15:26:15Z
---

# Polygeist Overview

The MLIR ecosystem is increasing but still misses a working C and C++ frontend.
Certainly, Clang does a fantastic job targeting LLVM IR, but there are many
more opportunities to consider by targeting MLIR from C++ before going down to
LLVM IR. For example, we may want to connect C more easily with higher-level
abstractions available in MLIR. In addition, to maintain C and C++ semantics
by, for example, preserving high-level information such as structured control
flow, OpenMP/GPU parallelism, and lowering C or C++ constructs to user-defined
custom operations.

The following shows a simple example where we use Polygesit to enter
the MLIR lowering pipeline and raise the C code to the Affine dialect.

```sh
cgeist gemm.c -function=matmul -raise-scf-to-affine -S
```

```c
#define N 200
#define M 300
#define K 400
#define DATA_TYPE float

void matmul(DATA_TYPE A[N][K], DATA_TYPE B[K][M], DATA_TYPE C[N][M]) {
  int i, j, k;
  for (int i = 0; i < N; i++) {
    for (int j = 0; j < M; j++) {
      for (int k = 0; k < K; k++) {
        C[i][j] += A[i][k] * B[k][j];
      }
    }
  }
}
```

```mlir
func @matmul(%arg0: memref<?x400xf32>, %arg1: memref<?x300xf32>, %arg2: memref<?x300xf32>) {
  affine.for %arg3 = 0 to 200 {
    affine.for %arg4 = 0 to 300 {
      affine.for %arg5 = 0 to 400 {
        %0 = affine.load %arg0[%arg3, %arg5] : memref<?x400xf32>
        %1 = affine.load %arg1[%arg5, %arg4] : memref<?x300xf32>
        %2 = mulf %0, %1 : f32
        %3 = affine.load %arg2[%arg3, %arg4] : memref<?x300xf32>
        %4 = addf %3, %2 : f32
        affine.store %4, %arg2[%arg3, %arg4] : memref<?x300xf32>
      }
    }
  }
  return
}
```

## Components

Polygeist is composed of two pieces:

*   A frontend to emit MLIR SCF from a broad range of exisiting C or C++ code.
*   A set of compilation passes to raise SCF constructs to the Affine dialect.

## More resources

For more information on Polygeist, please see:

*   The Polygeist [installation guide](/Installation/)

## Citing Polygeist

To cite Polygeist, please cite the following:
```
@inproceedings{polygeistPACT,
  title = {Polygeist: Raising C to Polyhedral MLIR},
  author = {Moses, William S. and Chelini, Lorenzo and Zhao, Ruizhe and Zinenko, Oleksandr},
  booktitle = {Proceedings of the ACM International Conference on Parallel Architectures and Compilation Techniques},
  numpages = {12},
  location = {Virtual Event},
  series = {PACT '21},
  publisher = {Association for Computing Machinery},
  year = {2021},
  address = {New York, NY, USA},
  keywords = {Polygeist, MLIR, Polyhedral, LLVM, Compiler, C++, Pluto, Polly, OpenScop, Parallel, OpenMP, Affine, Raising, Transformation, Splitting, Automatic-Parallelization, Reduction, Polybench},
}
```
