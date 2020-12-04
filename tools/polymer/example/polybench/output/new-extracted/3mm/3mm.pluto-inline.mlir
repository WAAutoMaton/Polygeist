#map0 = affine_map<(d0) -> (d0 * 32)>
#map1 = affine_map<(d0) -> (1100, d0 * 32 + 32)>
#map2 = affine_map<(d0) -> (800, d0 * 32 + 32)>
#map3 = affine_map<(d0) -> (1200, d0 * 32 + 32)>
#map4 = affine_map<(d0) -> (0, (d0 * 32 - 799) ceildiv 32)>
#map5 = affine_map<(d0) -> (d0 - 37)>
#map6 = affine_map<(d0, d1) -> (d0 * 32 - d1 * 32)>
#map7 = affine_map<(d0, d1) -> (800, d0 * 32 - d1 * 32 + 32)>
#map8 = affine_map<(d0) -> (0, (d0 * 32 - 1199) ceildiv 32)>
#map9 = affine_map<(d0) -> (d0 - 24)>
#map10 = affine_map<(d0, d1) -> (1200, d0 * 32 - d1 * 32 + 32)>
#map11 = affine_map<(d0) -> (0, (d0 * 32 - 799) ceildiv 32, (d0 * 32 - 1199) ceildiv 32)>
#map12 = affine_map<(d0) -> (35, d0 + 1)>
#map13 = affine_map<()[s0] -> ((s0 - 1) floordiv 32 + 1)>
#map14 = affine_map<(d0)[s0] -> (s0, d0 * 32 + 32)>
#map15 = affine_map<()[s0, s1, s2] -> ((s0 + s1 - 2) floordiv 32 + 1, (s0 + s2 - 2) floordiv 32 + 1)>
#map16 = affine_map<(d0)[s0] -> (0, (d0 * 32 - s0 + 1) ceildiv 32)>
#map17 = affine_map<(d0)[s0] -> (d0 + (-s0) floordiv 32 + 1)>
#map18 = affine_map<(d0, d1)[s0] -> (s0, d0 * 32 - d1 * 32 + 32)>
#map19 = affine_map<(d0)[s0, s1] -> (0, (d0 * 32 - s0 + 1) ceildiv 32, (d0 * 32 - s1 + 1) ceildiv 32)>
#map20 = affine_map<(d0)[s0] -> ((s0 - 1) floordiv 32 + 1, d0 + 1)>
#map21 = affine_map<()[s0, s1] -> ((s0 + s1 - 1) ceildiv 32)>
#map22 = affine_map<()[s0, s1] -> ((s0 + s1 - 2) floordiv 32 + 1)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"}  {
  llvm.mlir.global internal constant @str6("==END   DUMP_ARRAYS==\0A\00")
  llvm.mlir.global internal constant @str5("\0Aend   dump: %s\0A\00")
  llvm.mlir.global internal constant @str4("%0.2lf \00")
  llvm.mlir.global internal constant @str3("\0A\00")
  llvm.mlir.global internal constant @str2("G\00")
  llvm.mlir.global internal constant @str1("begin dump: %s\00")
  llvm.mlir.global internal constant @str0("==BEGIN DUMP_ARRAYS==\0A\00")
  llvm.mlir.global external @stderr() : !llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> !llvm.i32
  func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %c800_i32 = constant 800 : i32
    %c900_i32 = constant 900 : i32
    %c1000_i32 = constant 1000 : i32
    %c1100_i32 = constant 1100 : i32
    %c1200_i32 = constant 1200 : i32
    %c0_i32 = constant 0 : i32
    %c3_i32 = constant 3 : i32
    %c2_i32 = constant 2 : i32
    %c1_i32 = constant 1 : i32
    %c4000_i32 = constant 4000 : i32
    %c4500_i32 = constant 4500 : i32
    %c5500_i32 = constant 5500 : i32
    %c5000_i32 = constant 5000 : i32
    %0 = alloc() : memref<800x900xf64>
    %1 = alloc() : memref<800x1000xf64>
    %2 = alloc() : memref<1000x900xf64>
    %3 = alloc() : memref<900x1100xf64>
    %4 = alloc() : memref<900x1200xf64>
    %5 = alloc() : memref<1200x1100xf64>
    %6 = alloc() : memref<800x1100xf64>
    br ^bb1(%c0_i32 : i32)
  ^bb1(%7: i32):  // 2 preds: ^bb0, ^bb4
    %8 = cmpi "slt", %7, %c800_i32 : i32
    %9 = index_cast %7 : i32 to index
    cond_br %8, ^bb2(%c0_i32 : i32), ^bb5(%c0_i32 : i32)
  ^bb2(%10: i32):  // 2 preds: ^bb1, ^bb3
    %11 = cmpi "slt", %10, %c1000_i32 : i32
    %12 = index_cast %10 : i32 to index
    cond_br %11, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %13 = muli %7, %10 : i32
    %14 = addi %13, %c1_i32 : i32
    %15 = remi_signed %14, %c800_i32 : i32
    %16 = sitofp %15 : i32 to f64
    %17 = sitofp %c4000_i32 : i32 to f64
    %18 = divf %16, %17 : f64
    store %18, %1[%9, %12] : memref<800x1000xf64>
    %19 = addi %10, %c1_i32 : i32
    br ^bb2(%19 : i32)
  ^bb4:  // pred: ^bb2
    %20 = addi %7, %c1_i32 : i32
    br ^bb1(%20 : i32)
  ^bb5(%21: i32):  // 2 preds: ^bb1, ^bb8
    %22 = cmpi "slt", %21, %c1000_i32 : i32
    %23 = index_cast %21 : i32 to index
    cond_br %22, ^bb6(%c0_i32 : i32), ^bb9(%c0_i32 : i32)
  ^bb6(%24: i32):  // 2 preds: ^bb5, ^bb7
    %25 = cmpi "slt", %24, %c900_i32 : i32
    %26 = index_cast %24 : i32 to index
    cond_br %25, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %27 = addi %24, %c1_i32 : i32
    %28 = muli %21, %27 : i32
    %29 = addi %28, %c2_i32 : i32
    %30 = remi_signed %29, %c900_i32 : i32
    %31 = sitofp %30 : i32 to f64
    %32 = sitofp %c4500_i32 : i32 to f64
    %33 = divf %31, %32 : f64
    store %33, %2[%23, %26] : memref<1000x900xf64>
    br ^bb6(%27 : i32)
  ^bb8:  // pred: ^bb6
    %34 = addi %21, %c1_i32 : i32
    br ^bb5(%34 : i32)
  ^bb9(%35: i32):  // 2 preds: ^bb5, ^bb12
    %36 = cmpi "slt", %35, %c900_i32 : i32
    %37 = index_cast %35 : i32 to index
    cond_br %36, ^bb10(%c0_i32 : i32), ^bb13(%c0_i32 : i32)
  ^bb10(%38: i32):  // 2 preds: ^bb9, ^bb11
    %39 = cmpi "slt", %38, %c1200_i32 : i32
    %40 = index_cast %38 : i32 to index
    cond_br %39, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %41 = addi %38, %c3_i32 : i32
    %42 = muli %35, %41 : i32
    %43 = remi_signed %42, %c1100_i32 : i32
    %44 = sitofp %43 : i32 to f64
    %45 = sitofp %c5500_i32 : i32 to f64
    %46 = divf %44, %45 : f64
    store %46, %4[%37, %40] : memref<900x1200xf64>
    %47 = addi %38, %c1_i32 : i32
    br ^bb10(%47 : i32)
  ^bb12:  // pred: ^bb10
    %48 = addi %35, %c1_i32 : i32
    br ^bb9(%48 : i32)
  ^bb13(%49: i32):  // 2 preds: ^bb9, ^bb17
    %50 = cmpi "slt", %49, %c1200_i32 : i32
    %51 = index_cast %49 : i32 to index
    cond_br %50, ^bb15(%c0_i32 : i32), ^bb14
  ^bb14:  // pred: ^bb13
    affine.for %arg2 = 0 to 35 {
      affine.for %arg3 = 0 to 25 {
        affine.for %arg4 = #map0(%arg2) to min #map1(%arg2) {
          affine.for %arg5 = #map0(%arg3) to min #map2(%arg3) {
            call @S2(%3, %arg4, %arg5) : (memref<900x1100xf64>, index, index) -> ()
            call @S4(%6, %arg4, %arg5) : (memref<800x1100xf64>, index, index) -> ()
          }
        }
      }
    }
    affine.for %arg2 = 0 to 25 {
      affine.for %arg3 = 0 to 35 {
        affine.for %arg4 = 0 to 38 {
          affine.for %arg5 = #map0(%arg2) to min #map2(%arg2) {
            affine.for %arg6 = #map0(%arg3) to min #map1(%arg3) {
              affine.for %arg7 = #map0(%arg4) to min #map3(%arg4) {
                call @S3(%3, %arg6, %arg5, %5, %arg7, %4) : (memref<900x1100xf64>, index, index, memref<1200x1100xf64>, index, memref<900x1200xf64>) -> ()
              }
            }
          }
        }
      }
    }
    affine.for %arg2 = 0 to 35 {
      affine.for %arg3 = 0 to 25 {
        affine.for %arg4 = #map0(%arg2) to min #map1(%arg2) {
          affine.for %arg5 = #map0(%arg3) to min #map2(%arg3) {
            call @S0(%0, %arg4, %arg5) : (memref<800x900xf64>, index, index) -> ()
          }
        }
      }
    }
    affine.for %arg2 = 0 to 60 {
      affine.for %arg3 = max #map4(%arg2) to #map5(%arg2) {
        affine.for %arg4 = 0 to 38 {
          affine.for %arg5 = #map6(%arg2, %arg3) to min #map7(%arg2, %arg3) {
            affine.for %arg6 = #map0(%arg3) to min #map1(%arg3) {
              affine.for %arg7 = #map0(%arg4) to min #map3(%arg4) {
                call @S1(%0, %arg6, %arg5, %2, %arg7, %1) : (memref<800x900xf64>, index, index, memref<1000x900xf64>, index, memref<800x1000xf64>) -> ()
              }
            }
          }
        }
      }
      affine.for %arg3 = max #map8(%arg2) to #map9(%arg2) {
        affine.for %arg4 = 0 to 25 {
          affine.for %arg5 = #map0(%arg3) to min #map1(%arg3) {
            affine.for %arg6 = #map0(%arg4) to min #map2(%arg4) {
              affine.for %arg7 = #map6(%arg2, %arg3) to min #map10(%arg2, %arg3) {
                call @S5(%6, %arg5, %arg6, %3, %arg7, %0) : (memref<800x1100xf64>, index, index, memref<900x1100xf64>, index, memref<800x900xf64>) -> ()
              }
            }
          }
        }
      }
      affine.for %arg3 = max #map11(%arg2) to min #map12(%arg2) {
        affine.for %arg4 = 0 to 38 {
          affine.for %arg5 = #map6(%arg2, %arg3) to min #map7(%arg2, %arg3) {
            affine.for %arg6 = #map0(%arg3) to min #map1(%arg3) {
              affine.for %arg7 = #map0(%arg4) to min #map3(%arg4) {
                call @S1(%0, %arg6, %arg5, %2, %arg7, %1) : (memref<800x900xf64>, index, index, memref<1000x900xf64>, index, memref<800x1000xf64>) -> ()
              }
            }
          }
        }
        affine.for %arg4 = 0 to 25 {
          affine.for %arg5 = #map0(%arg3) to min #map1(%arg3) {
            affine.for %arg6 = #map0(%arg4) to min #map2(%arg4) {
              affine.for %arg7 = #map6(%arg2, %arg3) to min #map10(%arg2, %arg3) {
                call @S5(%6, %arg5, %arg6, %3, %arg7, %0) : (memref<800x1100xf64>, index, index, memref<900x1100xf64>, index, memref<800x900xf64>) -> ()
              }
            }
          }
        }
      }
    }
    affine.for %arg2 = 72 to 60 {
      affine.for %arg3 = max #map4(%arg2) to 35 {
        affine.for %arg4 = 0 to 38 {
          affine.for %arg5 = #map6(%arg2, %arg3) to min #map7(%arg2, %arg3) {
            affine.for %arg6 = #map0(%arg3) to min #map1(%arg3) {
              affine.for %arg7 = #map0(%arg4) to min #map3(%arg4) {
                call @S1(%0, %arg6, %arg5, %2, %arg7, %1) : (memref<800x900xf64>, index, index, memref<1000x900xf64>, index, memref<800x1000xf64>) -> ()
              }
            }
          }
        }
      }
    }
    affine.for %arg2 = 60 to 72 {
      affine.for %arg3 = max #map8(%arg2) to 35 {
        affine.for %arg4 = 0 to 25 {
          affine.for %arg5 = #map0(%arg3) to min #map1(%arg3) {
            affine.for %arg6 = #map0(%arg4) to min #map2(%arg4) {
              affine.for %arg7 = #map6(%arg2, %arg3) to min #map10(%arg2, %arg3) {
                call @S5(%6, %arg5, %arg6, %3, %arg7, %0) : (memref<800x1100xf64>, index, index, memref<900x1100xf64>, index, memref<800x900xf64>) -> ()
              }
            }
          }
        }
      }
    }
    call @print_array(%c800_i32, %c1100_i32, %6) : (i32, i32, memref<800x1100xf64>) -> ()
    return %c0_i32 : i32
  ^bb15(%52: i32):  // 2 preds: ^bb13, ^bb16
    %53 = cmpi "slt", %52, %c1100_i32 : i32
    %54 = index_cast %52 : i32 to index
    cond_br %53, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %55 = addi %52, %c2_i32 : i32
    %56 = muli %49, %55 : i32
    %57 = addi %56, %c2_i32 : i32
    %58 = remi_signed %57, %c1000_i32 : i32
    %59 = sitofp %58 : i32 to f64
    %60 = sitofp %c5000_i32 : i32 to f64
    %61 = divf %59, %60 : f64
    store %61, %5[%51, %54] : memref<1200x1100xf64>
    %62 = addi %52, %c1_i32 : i32
    br ^bb15(%62 : i32)
  ^bb17:  // pred: ^bb15
    %63 = addi %49, %c1_i32 : i32
    br ^bb13(%63 : i32)
  }
  func private @print_array(%arg0: i32, %arg1: i32, %arg2: memref<800x1100xf64>) {
    %c0_i32 = constant 0 : i32
    %c20_i32 = constant 20 : i32
    %c1_i32 = constant 1 : i32
    %0 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %2 = llvm.mlir.addressof @str0 : !llvm.ptr<array<23 x i8>>
    %3 = llvm.mlir.constant(0 : index) : !llvm.i64
    %4 = llvm.getelementptr %2[%3, %3] : (!llvm.ptr<array<23 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %5 = llvm.call @fprintf(%1, %4) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> !llvm.i32
    %6 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %8 = llvm.mlir.addressof @str1 : !llvm.ptr<array<15 x i8>>
    %9 = llvm.getelementptr %8[%3, %3] : (!llvm.ptr<array<15 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %10 = llvm.mlir.addressof @str2 : !llvm.ptr<array<2 x i8>>
    %11 = llvm.getelementptr %10[%3, %3] : (!llvm.ptr<array<2 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %12 = llvm.call @fprintf(%7, %9, %11) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.i32
    br ^bb1(%c0_i32 : i32)
  ^bb1(%13: i32):  // 2 preds: ^bb0, ^bb5
    %14 = cmpi "slt", %13, %arg0 : i32
    %15 = index_cast %13 : i32 to index
    cond_br %14, ^bb3(%c0_i32 : i32), ^bb2
  ^bb2:  // pred: ^bb1
    %16 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %17 = llvm.load %16 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %18 = llvm.mlir.addressof @str5 : !llvm.ptr<array<17 x i8>>
    %19 = llvm.getelementptr %18[%3, %3] : (!llvm.ptr<array<17 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %20 = llvm.mlir.addressof @str2 : !llvm.ptr<array<2 x i8>>
    %21 = llvm.getelementptr %20[%3, %3] : (!llvm.ptr<array<2 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %22 = llvm.call @fprintf(%17, %19, %21) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.i32
    %23 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %24 = llvm.load %23 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %25 = llvm.mlir.addressof @str6 : !llvm.ptr<array<23 x i8>>
    %26 = llvm.getelementptr %25[%3, %3] : (!llvm.ptr<array<23 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %27 = llvm.call @fprintf(%24, %26) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> !llvm.i32
    return
  ^bb3(%28: i32):  // 2 preds: ^bb1, ^bb4
    %29 = cmpi "slt", %28, %arg1 : i32
    %30 = index_cast %28 : i32 to index
    cond_br %29, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %31 = muli %13, %arg0 : i32
    %32 = addi %31, %28 : i32
    %33 = remi_signed %32, %c20_i32 : i32
    %34 = cmpi "eq", %33, %c0_i32 : i32
    scf.if %34 {
      %44 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %45 = llvm.load %44 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %46 = llvm.mlir.addressof @str3 : !llvm.ptr<array<2 x i8>>
      %47 = llvm.getelementptr %46[%3, %3] : (!llvm.ptr<array<2 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
      %48 = llvm.call @fprintf(%45, %47) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> !llvm.i32
    }
    %35 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %36 = llvm.load %35 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %37 = llvm.mlir.addressof @str4 : !llvm.ptr<array<8 x i8>>
    %38 = llvm.getelementptr %37[%3, %3] : (!llvm.ptr<array<8 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %39 = load %arg2[%15, %30] : memref<800x1100xf64>
    %40 = llvm.mlir.cast %39 : f64 to !llvm.double
    %41 = llvm.call @fprintf(%36, %38, %40) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.double) -> !llvm.i32
    %42 = addi %28, %c1_i32 : i32
    br ^bb3(%42 : i32)
  ^bb5:  // pred: ^bb3
    %43 = addi %13, %c1_i32 : i32
    br ^bb1(%43 : i32)
  }
  func private @free(memref<?xi8>)
  func private @S0(%arg0: memref<800x900xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %cst = constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1, %arg2] : memref<800x900xf64>
    return
  }
  func private @S1(%arg0: memref<800x900xf64>, %arg1: index, %arg2: index, %arg3: memref<1000x900xf64>, %arg4: index, %arg5: memref<800x1000xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<800x900xf64>
    %1 = affine.load %arg5[%arg1, %arg4] : memref<800x1000xf64>
    %2 = affine.load %arg3[%arg4, %arg2] : memref<1000x900xf64>
    %3 = mulf %1, %2 : f64
    %4 = addf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<800x900xf64>
    return
  }
  func private @S2(%arg0: memref<900x1100xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %cst = constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1, %arg2] : memref<900x1100xf64>
    return
  }
  func private @S3(%arg0: memref<900x1100xf64>, %arg1: index, %arg2: index, %arg3: memref<1200x1100xf64>, %arg4: index, %arg5: memref<900x1200xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<900x1100xf64>
    %1 = affine.load %arg5[%arg1, %arg4] : memref<900x1200xf64>
    %2 = affine.load %arg3[%arg4, %arg2] : memref<1200x1100xf64>
    %3 = mulf %1, %2 : f64
    %4 = addf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<900x1100xf64>
    return
  }
  func private @S4(%arg0: memref<800x1100xf64>, %arg1: index, %arg2: index) attributes {scop.stmt} {
    %cst = constant 0.000000e+00 : f64
    affine.store %cst, %arg0[%arg1, %arg2] : memref<800x1100xf64>
    return
  }
  func private @S5(%arg0: memref<800x1100xf64>, %arg1: index, %arg2: index, %arg3: memref<900x1100xf64>, %arg4: index, %arg5: memref<800x900xf64>) attributes {scop.stmt} {
    %0 = affine.load %arg0[%arg1, %arg2] : memref<800x1100xf64>
    %1 = affine.load %arg5[%arg1, %arg4] : memref<800x900xf64>
    %2 = affine.load %arg3[%arg4, %arg2] : memref<900x1100xf64>
    %3 = mulf %1, %2 : f64
    %4 = addf %0, %3 : f64
    affine.store %4, %arg0[%arg1, %arg2] : memref<800x1100xf64>
    return
  }
  func @kernel_3mm_new(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<800x900xf64>, %arg6: memref<800x1000xf64>, %arg7: memref<1000x900xf64>, %arg8: memref<900x1100xf64>, %arg9: memref<900x1200xf64>, %arg10: memref<1200x1100xf64>, %arg11: memref<800x1100xf64>) {
    %0 = index_cast %arg4 : i32 to index
    %1 = index_cast %arg0 : i32 to index
    %2 = index_cast %arg3 : i32 to index
    affine.for %arg12 = 0 to #map13()[%2] {
      affine.for %arg13 = 0 to #map13()[%1] {
        affine.for %arg14 = #map0(%arg12) to min #map14(%arg12)[%2] {
          affine.for %arg15 = #map0(%arg13) to min #map14(%arg13)[%1] {
            call @S2(%arg8, %arg14, %arg15) : (memref<900x1100xf64>, index, index) -> ()
            call @S4(%arg11, %arg14, %arg15) : (memref<800x1100xf64>, index, index) -> ()
          }
        }
      }
    }
    affine.for %arg12 = 0 to #map13()[%1] {
      affine.for %arg13 = 0 to #map13()[%2] {
        affine.for %arg14 = 0 to #map13()[%0] {
          affine.for %arg15 = #map0(%arg12) to min #map14(%arg12)[%1] {
            affine.for %arg16 = #map0(%arg13) to min #map14(%arg13)[%2] {
              affine.for %arg17 = #map0(%arg14) to min #map14(%arg14)[%0] {
                call @S3(%arg8, %arg16, %arg15, %arg10, %arg17, %arg9) : (memref<900x1100xf64>, index, index, memref<1200x1100xf64>, index, memref<900x1200xf64>) -> ()
              }
            }
          }
        }
      }
    }
    affine.for %arg12 = 0 to #map13()[%2] {
      affine.for %arg13 = 0 to #map13()[%1] {
        affine.for %arg14 = #map0(%arg12) to min #map14(%arg12)[%2] {
          affine.for %arg15 = #map0(%arg13) to min #map14(%arg13)[%1] {
            call @S0(%arg5, %arg14, %arg15) : (memref<800x900xf64>, index, index) -> ()
          }
        }
      }
    }
    affine.for %arg12 = 0 to min #map15()[%1, %2, %0] {
      affine.for %arg13 = max #map16(%arg12)[%1] to #map17(%arg12)[%0] {
        affine.for %arg14 = 0 to #map13()[%0] {
          affine.for %arg15 = #map6(%arg12, %arg13) to min #map18(%arg12, %arg13)[%1] {
            affine.for %arg16 = #map0(%arg13) to min #map14(%arg13)[%2] {
              affine.for %arg17 = #map0(%arg14) to min #map14(%arg14)[%0] {
                call @S1(%arg5, %arg16, %arg15, %arg7, %arg17, %arg6) : (memref<800x900xf64>, index, index, memref<1000x900xf64>, index, memref<800x1000xf64>) -> ()
              }
            }
          }
        }
      }
      affine.for %arg13 = max #map16(%arg12)[%0] to #map17(%arg12)[%1] {
        affine.for %arg14 = 0 to #map13()[%1] {
          affine.for %arg15 = #map0(%arg13) to min #map14(%arg13)[%2] {
            affine.for %arg16 = #map0(%arg14) to min #map14(%arg14)[%1] {
              affine.for %arg17 = #map6(%arg12, %arg13) to min #map18(%arg12, %arg13)[%0] {
                call @S5(%arg11, %arg15, %arg16, %arg8, %arg17, %arg5) : (memref<800x1100xf64>, index, index, memref<900x1100xf64>, index, memref<800x900xf64>) -> ()
              }
            }
          }
        }
      }
      affine.for %arg13 = max #map19(%arg12)[%1, %0] to min #map20(%arg12)[%2] {
        affine.for %arg14 = 0 to #map13()[%0] {
          affine.for %arg15 = #map6(%arg12, %arg13) to min #map18(%arg12, %arg13)[%1] {
            affine.for %arg16 = #map0(%arg13) to min #map14(%arg13)[%2] {
              affine.for %arg17 = #map0(%arg14) to min #map14(%arg14)[%0] {
                call @S1(%arg5, %arg16, %arg15, %arg7, %arg17, %arg6) : (memref<800x900xf64>, index, index, memref<1000x900xf64>, index, memref<800x1000xf64>) -> ()
              }
            }
          }
        }
        affine.for %arg14 = 0 to #map13()[%1] {
          affine.for %arg15 = #map0(%arg13) to min #map14(%arg13)[%2] {
            affine.for %arg16 = #map0(%arg14) to min #map14(%arg14)[%1] {
              affine.for %arg17 = #map6(%arg12, %arg13) to min #map18(%arg12, %arg13)[%0] {
                call @S5(%arg11, %arg15, %arg16, %arg8, %arg17, %arg5) : (memref<800x1100xf64>, index, index, memref<900x1100xf64>, index, memref<800x900xf64>) -> ()
              }
            }
          }
        }
      }
    }
    affine.for %arg12 = #map21()[%2, %0] to #map22()[%1, %2] {
      affine.for %arg13 = max #map16(%arg12)[%1] to #map13()[%2] {
        affine.for %arg14 = 0 to #map13()[%0] {
          affine.for %arg15 = #map6(%arg12, %arg13) to min #map18(%arg12, %arg13)[%1] {
            affine.for %arg16 = #map0(%arg13) to min #map14(%arg13)[%2] {
              affine.for %arg17 = #map0(%arg14) to min #map14(%arg14)[%0] {
                call @S1(%arg5, %arg16, %arg15, %arg7, %arg17, %arg6) : (memref<800x900xf64>, index, index, memref<1000x900xf64>, index, memref<800x1000xf64>) -> ()
              }
            }
          }
        }
      }
    }
    affine.for %arg12 = #map21()[%1, %2] to #map22()[%2, %0] {
      affine.for %arg13 = max #map16(%arg12)[%0] to #map13()[%2] {
        affine.for %arg14 = 0 to #map13()[%1] {
          affine.for %arg15 = #map0(%arg13) to min #map14(%arg13)[%2] {
            affine.for %arg16 = #map0(%arg14) to min #map14(%arg14)[%1] {
              affine.for %arg17 = #map6(%arg12, %arg13) to min #map18(%arg12, %arg13)[%0] {
                call @S5(%arg11, %arg15, %arg16, %arg8, %arg17, %arg5) : (memref<800x1100xf64>, index, index, memref<900x1100xf64>, index, memref<800x900xf64>) -> ()
              }
            }
          }
        }
      }
    }
    return
  }
}

