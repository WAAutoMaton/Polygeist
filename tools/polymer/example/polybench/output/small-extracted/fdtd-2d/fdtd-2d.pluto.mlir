#map0 = affine_map<()[s0] -> (s0 - 1)>
#map1 = affine_map<()[s0] -> ((s0 - 1) floordiv 16 + 1)>
#map2 = affine_map<()[s0] -> ((s0 - 1) ceildiv 32)>
#map3 = affine_map<()[s0, s1] -> ((s0 + s1 - 2) floordiv 32 + 1)>
#map4 = affine_map<(d0)[s0] -> (s0, d0 * 32)>
#map5 = affine_map<(d0)[s0, s1] -> (d0 * 32 + 32, s0 + s1 - 1)>
#map6 = affine_map<(d0)[s0] -> (d0 - s0 + 1)>
#map7 = affine_map<(d0)[s0] -> (d0 - s0)>
#map8 = affine_map<(d0)[s0] -> (d0 ceildiv 2, (d0 * 32 - s0 + 2) ceildiv 32)>
#map9 = affine_map<(d0)[s0, s1] -> ((s0 + s1 - 2) floordiv 32 + 1, (d0 * 16 + s1 + 14) floordiv 32 + 1, (d0 * 32 + s1 + 29) floordiv 32 + 1)>
#map10 = affine_map<(d0) -> (d0 * 16 + 15)>
#map11 = affine_map<(d0, d1)[s0] -> (0, (d0 - 1) ceildiv 2, (d1 * 32 - s0 - 29) ceildiv 32)>
#map12 = affine_map<(d0)[s0] -> ((d0 + 1) floordiv 2 + 1, (s0 - 1) floordiv 32 + 1)>
#map13 = affine_map<(d0) -> (d0 * 16)>
#map14 = affine_map<(d0) -> (d0 * 16 + 1)>
#map15 = affine_map<(d0)[s0] -> (d0 * 16 + 32, d0 * 16 + s0)>
#map16 = affine_map<(d0, d1) -> (d0 * -16 + d1)>
#map17 = affine_map<(d0, d1) -> (d0 * -16 + d1 - 1)>
#map18 = affine_map<(d0, d1)[s0, s1] -> (0, d0 * 16, d0 * 16 - s0 + 17, d1 * 32 - s1 + 1)>
#map19 = affine_map<(d0) -> (d0 * 16 + 16)>
#map20 = affine_map<(d0) -> (d0 * 32)>
#map21 = affine_map<(d0, d1, d2)[s0] -> (d0 * -32 + d1 * 32 + d2 * 2 + 1, d2 + s0)>
#map22 = affine_map<(d0, d1)[s0] -> (d0 * 16 + 48, d1 + s0)>
#map23 = affine_map<(d0, d1) -> (-d0 + d1 - 1)>
#map24 = affine_map<(d0, d1) -> (-d0 + d1)>
#map25 = affine_map<(d0, d1, d2) -> (d0 * -32 + d1 * 32 + d2)>
#map26 = affine_map<(d0, d1, d2)[s0] -> (d0 * 16, d1 * 32, d0 * 32 - d2 * 32 + 1, d2 * 32 - s0 + 1)>
#map27 = affine_map<(d0, d1, d2)[s0, s1] -> (s0, d0 * 16 + 31, d1 * 32 + 31, d0 * 32 - d2 * 32 + s1 + 30)>
#map28 = affine_map<(d0, d1, d2) -> (d0 * -32 + d1 * 32 + d2 - 31)>
#map29 = affine_map<(d0) -> (d0 + 1)>
#map30 = affine_map<(d0, d1)[s0] -> (d0 * 32 + 32, d1 + s0)>
#map31 = affine_map<(d0, d1)[s0] -> (d0 * 16 + 32, d1 + s0)>
#map32 = affine_map<(d0, d1, d2) -> (d0 * 32, d1 + 1, d2 * -32 + d0 * 32 + d1 * 2 - 30)>
#map33 = affine_map<(d0, d1, d2)[s0] -> (d0 * 32 + 32, d1 * -32 + d0 * 32 + d2 * 2 + 1, d2 + s0)>
#map34 = affine_map<(d0, d1)[s0] -> (d0 * 32 - d1 * 32 + s0 + 30)>
#map35 = affine_map<(d0, d1)[s0] -> (d0 * 32 - d1 * 32 + s0 + 31)>
#map36 = affine_map<(d0, d1, d2)[s0, s1] -> (d0 * 32 + 32, d1 * 32 - d2 * 32 + s0 + s1 + 30)>
#map37 = affine_map<(d0, d1, d2)[s0] -> (d0 * -32 + d1 * 32 + d2 - s0 - 30)>
#map38 = affine_map<(d0, d1) -> (d0 * -16 + d1 * 32)>
#map39 = affine_map<(d0) -> (d0 * 16 + 31)>
#map40 = affine_map<(d0) -> (d0 * 16 + 32)>
#map41 = affine_map<(d0)[s0] -> (d0 * 16 + 48, d0 * 16 + s0 + 31)>
#map42 = affine_map<(d0, d1) -> (d0 * -16 + d1 - 31)>
#map43 = affine_map<(d0, d1, d2) -> (d0 * 32, d1 * -32 + d0 * 32 + d2 * 64 + 31)>
#map44 = affine_map<(d0, d1, d2)[s0] -> (d0 * 32 + 32, d1 * 32 + s0 + 31, d2 * -32 + d0 * 32 + d1 * 64 + 63)>
#map45 = affine_map<(d0, d1) -> (d0 * -32 + d1 - 31)>
#map46 = affine_map<(d0) -> (d0 * 32 + 31)>
#map47 = affine_map<(d0, d1)[s0, s1] -> (d0 * 16, d0 * 16 - s0 + 17, d1 * 32 - s1 + 1)>
#map48 = affine_map<(d0) -> ((d0 + 2) ceildiv 2)>
#map49 = affine_map<(d0, d1)[s0, s1, s2] -> ((s0 + s1 - 2) floordiv 32 + 1, (d0 * 16 + s1 + 29) floordiv 32 + 1, (d0 * 32 - d1 * 32 + s2 + s1 + 28) floordiv 32 + 1)>
#map50 = affine_map<(d0, d1)[s0] -> (d0 * 32 + 32, d1 * 16 + s0)>
#map51 = affine_map<(d0, d1, d2)[s0, s1] -> (0, d0 * 16, d0 * 32 - d1 * 32 + 1, d1 * 32 - s0 + 1, d2 * 32 - s1 + 1)>
#map52 = affine_map<(d0, d1)[s0, s1] -> (s0, d0 * 16 + 31, d0 * 32 - d1 * 32 + s1 + 30)>
#map53 = affine_map<(d0, d1)[s0] -> (d0 * 32 + 32, d1 * 16 + s0 + 31)>
#map54 = affine_map<()[s0] -> (32, s0)>
#map55 = affine_map<()[s0] -> ((s0 - 1) floordiv 32 + 1)>
#map56 = affine_map<(d0)[s0] -> (s0, d0 * 32 + 32)>
#set0 = affine_set<(d0)[s0] : (d0 * 16 - (s0 - 1) == 0)>
#set1 = affine_set<()[s0] : ((s0 + 31) mod 32 == 0)>
#set2 = affine_set<(d0, d1)[s0] : (d0 * 16 - (d1 * 32 - s0 - 14) == 0)>
#set3 = affine_set<(d0) : ((d0 + 1) mod 2 == 0)>
#set4 = affine_set<(d0)[s0] : ((d0 * 16 + s0 * 31 + 18) mod 32 == 0)>
#set5 = affine_set<(d0, d1, d2) : (d0 - d1 * 2 == 0, d0 - d2 * 2 == 0)>
#set6 = affine_set<(d0) : (d0 mod 2 == 0)>
#set7 = affine_set<(d0, d1) : (d0 - (d1 * 2 - 1) == 0)>
#set8 = affine_set<(d0, d1, d2)[s0] : (d0 - (d1 * 32 + d2 - s0 + 2) ceildiv 32 >= 0)>
#set9 = affine_set<(d0, d1, d2) : (d1 floordiv 16 - d0 - 1 >= 0, d2 + d1 floordiv 32 - d0 - 1 >= 0)>
#set10 = affine_set<(d0, d1, d2)[s0] : (d0 - (d1 - 15) ceildiv 16 >= 0, d0 - (d2 * 32 + d1 - s0 + 2) ceildiv 32 >= 0)>
#set11 = affine_set<(d0, d1, d2)[s0, s1] : (d1 * 2 + (-s0) floordiv 16 - d0 >= 0, d1 + d2 + (-s0) floordiv 32 - d0 >= 0, (d1 * 32 + s1 - s0 - 31) floordiv 32 - d0 >= 0)>
#set12 = affine_set<(d0, d1, d2)[s0, s1] : (d0 - (d1 * 2 - 1) == 0, -d0 + s0 floordiv 16 - 2 >= 0, d0 - (d2 * 32 - s1 + 1) ceildiv 16 >= 0)>
#set13 = affine_set<(d0, d1, d2)[s0, s1] : (d0 - (d1 * 32 + d2 * 32 - s0 + 1) ceildiv 32 >= 0, d0 - d2 * 2 >= 0, d1 - (d2 + 1) >= 0, -d2 + s1 floordiv 32 - 1 >= 0)>
#set14 = affine_set<(d0, d1, d2)[s0] : (d0 - d1 * 2 == 0, d0 - d2 * 2 == 0, -d0 + s0 floordiv 16 - 2 >= 0)>
#set15 = affine_set<(d0)[s0, s1] : (-d0 + (s0 + s1 - 18) floordiv 16 >= 0, d0 - (s0 - 16) ceildiv 16 >= 0)>
#set16 = affine_set<(d0, d1, d2)[s0] : (d0 - d1 * 2 == 0, d0 - (d2 * 32 - s0 + 1) ceildiv 16 >= 0)>
#set17 = affine_set<(d0, d1) : (d0 - d1 * 2 == 0)>
#set18 = affine_set<(d0, d1)[s0, s1] : (-d0 + s0 floordiv 16 - 2 >= 0, d1 * 2 - d0 - 1 >= 0, d0 - (d1 * 32 - s1 + 1) ceildiv 16 >= 0)>
#set19 = affine_set<(d0, d1)[s0, s1] : (d1 * 2 + (-s0) floordiv 16 - d0 >= 0, (d1 * 32 + s1 - s0 - 31) floordiv 32 - d0 >= 0)>
#set20 = affine_set<(d0, d1)[s0] : (d0 - d1 * 2 == 0, -d0 + s0 floordiv 16 - 2 >= 0)>
#set21 = affine_set<(d0)[s0] : ((d0 * 16 + s0 + 30) mod 32 == 0)>
#set22 = affine_set<()[s0, s1] : ((s0 + s1 + 29) mod 32 == 0)>
#set23 = affine_set<(d0) : (d0 + 1 == 0)>
#set24 = affine_set<()[s0] : ((s0 + 30) mod 32 == 0)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"}  {
  llvm.mlir.global internal constant @str8("hz\00")
  llvm.mlir.global internal constant @str7("ey\00")
  llvm.mlir.global internal constant @str6("==END   DUMP_ARRAYS==\0A\00")
  llvm.mlir.global internal constant @str5("\0Aend   dump: %s\0A\00")
  llvm.mlir.global internal constant @str4("%0.2lf \00")
  llvm.mlir.global internal constant @str3("\0A\00")
  llvm.mlir.global internal constant @str2("ex\00")
  llvm.mlir.global internal constant @str1("begin dump: %s\00")
  llvm.mlir.global internal constant @str0("==BEGIN DUMP_ARRAYS==\0A\00")
  llvm.mlir.global external @stderr() : !llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.func @fprintf(!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> !llvm.i32
  func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %c20_i32 = constant 20 : i32
    %c30_i32 = constant 30 : i32
    %c0_i32 = constant 0 : i32
    %0 = alloc() : memref<20x30xf64>
    %1 = alloc() : memref<20x30xf64>
    %2 = alloc() : memref<20x30xf64>
    %3 = alloc() : memref<20xf64>
    call @init_array(%c20_i32, %c20_i32, %c30_i32, %0, %1, %2, %3) : (i32, i32, i32, memref<20x30xf64>, memref<20x30xf64>, memref<20x30xf64>, memref<20xf64>) -> ()
    call @kernel_fdtd_2d_new(%c20_i32, %c20_i32, %c30_i32, %0, %1, %2, %3) : (i32, i32, i32, memref<20x30xf64>, memref<20x30xf64>, memref<20x30xf64>, memref<20xf64>) -> ()
    call @print_array(%c20_i32, %c30_i32, %0, %1, %2) : (i32, i32, memref<20x30xf64>, memref<20x30xf64>, memref<20x30xf64>) -> ()
    return %c0_i32 : i32
  }
  func @init_array(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<20x30xf64>, %arg4: memref<20x30xf64>, %arg5: memref<20x30xf64>, %arg6: memref<20xf64>) {
    %c0_i32 = constant 0 : i32
    %c2_i32 = constant 2 : i32
    %c3_i32 = constant 3 : i32
    %c1_i32 = constant 1 : i32
    br ^bb1(%c0_i32 : i32)
  ^bb1(%0: i32):  // 2 preds: ^bb0, ^bb2
    %1 = cmpi "slt", %0, %arg0 : i32
    %2 = index_cast %0 : i32 to index
    cond_br %1, ^bb2, ^bb3(%c0_i32 : i32)
  ^bb2:  // pred: ^bb1
    %3 = sitofp %0 : i32 to f64
    store %3, %arg6[%2] : memref<20xf64>
    %4 = addi %0, %c1_i32 : i32
    br ^bb1(%4 : i32)
  ^bb3(%5: i32):  // 2 preds: ^bb1, ^bb7
    %6 = cmpi "slt", %5, %arg1 : i32
    %7 = index_cast %5 : i32 to index
    cond_br %6, ^bb5(%c0_i32 : i32), ^bb4
  ^bb4:  // pred: ^bb3
    return
  ^bb5(%8: i32):  // 2 preds: ^bb3, ^bb6
    %9 = cmpi "slt", %8, %arg2 : i32
    %10 = index_cast %8 : i32 to index
    cond_br %9, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %11 = sitofp %5 : i32 to f64
    %12 = addi %8, %c1_i32 : i32
    %13 = sitofp %12 : i32 to f64
    %14 = mulf %11, %13 : f64
    %15 = sitofp %arg1 : i32 to f64
    %16 = divf %14, %15 : f64
    store %16, %arg3[%7, %10] : memref<20x30xf64>
    %17 = addi %8, %c2_i32 : i32
    %18 = sitofp %17 : i32 to f64
    %19 = mulf %11, %18 : f64
    %20 = sitofp %arg2 : i32 to f64
    %21 = divf %19, %20 : f64
    store %21, %arg4[%7, %10] : memref<20x30xf64>
    %22 = addi %8, %c3_i32 : i32
    %23 = sitofp %22 : i32 to f64
    %24 = mulf %11, %23 : f64
    %25 = divf %24, %15 : f64
    store %25, %arg5[%7, %10] : memref<20x30xf64>
    br ^bb5(%12 : i32)
  ^bb7:  // pred: ^bb5
    %26 = addi %5, %c1_i32 : i32
    br ^bb3(%26 : i32)
  }
  func @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<20x30xf64>, %arg4: memref<20x30xf64>, %arg5: memref<20x30xf64>, %arg6: memref<20xf64>) {
    %0 = index_cast %arg2 : i32 to index
    %1 = index_cast %arg1 : i32 to index
    %2 = index_cast %arg0 : i32 to index
    affine.for %arg7 = 0 to %2 {
      affine.for %arg8 = 0 to %0 {
        call @S0(%arg4, %arg8, %arg6, %arg7) : (memref<20x30xf64>, index, memref<20xf64>, index) -> ()
      }
      affine.for %arg8 = 1 to %1 {
        affine.for %arg9 = 0 to %0 {
          call @S1(%arg4, %arg8, %arg9, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
        }
      }
      affine.for %arg8 = 0 to %1 {
        affine.for %arg9 = 1 to %0 {
          call @S2(%arg3, %arg8, %arg9, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
        }
      }
      affine.for %arg8 = 0 to #map0()[%1] {
        affine.for %arg9 = 0 to #map0()[%0] {
          call @S3(%arg5, %arg8, %arg9, %arg4, %arg3) : (memref<20x30xf64>, index, index, memref<20x30xf64>, memref<20x30xf64>) -> ()
        }
      }
    }
    return
  }
  func @print_array(%arg0: i32, %arg1: i32, %arg2: memref<20x30xf64>, %arg3: memref<20x30xf64>, %arg4: memref<20x30xf64>) {
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
    %10 = llvm.mlir.addressof @str2 : !llvm.ptr<array<3 x i8>>
    %11 = llvm.getelementptr %10[%3, %3] : (!llvm.ptr<array<3 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
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
    %20 = llvm.mlir.addressof @str2 : !llvm.ptr<array<3 x i8>>
    %21 = llvm.getelementptr %20[%3, %3] : (!llvm.ptr<array<3 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %22 = llvm.call @fprintf(%17, %19, %21) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.i32
    %23 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %24 = llvm.load %23 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %25 = llvm.mlir.addressof @str6 : !llvm.ptr<array<23 x i8>>
    %26 = llvm.getelementptr %25[%3, %3] : (!llvm.ptr<array<23 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %27 = llvm.call @fprintf(%24, %26) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> !llvm.i32
    %28 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %29 = llvm.load %28 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %30 = llvm.mlir.addressof @str1 : !llvm.ptr<array<15 x i8>>
    %31 = llvm.getelementptr %30[%3, %3] : (!llvm.ptr<array<15 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %32 = llvm.mlir.addressof @str7 : !llvm.ptr<array<3 x i8>>
    %33 = llvm.getelementptr %32[%3, %3] : (!llvm.ptr<array<3 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %34 = llvm.call @fprintf(%29, %31, %33) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.i32
    br ^bb6(%c0_i32 : i32)
  ^bb3(%35: i32):  // 2 preds: ^bb1, ^bb4
    %36 = cmpi "slt", %35, %arg1 : i32
    %37 = index_cast %35 : i32 to index
    cond_br %36, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %38 = muli %13, %arg0 : i32
    %39 = addi %38, %35 : i32
    %40 = remi_signed %39, %c20_i32 : i32
    %41 = cmpi "eq", %40, %c0_i32 : i32
    scf.if %41 {
      %110 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %111 = llvm.load %110 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %112 = llvm.mlir.addressof @str3 : !llvm.ptr<array<2 x i8>>
      %113 = llvm.getelementptr %112[%3, %3] : (!llvm.ptr<array<2 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
      %114 = llvm.call @fprintf(%111, %113) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> !llvm.i32
    }
    %42 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %43 = llvm.load %42 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %44 = llvm.mlir.addressof @str4 : !llvm.ptr<array<8 x i8>>
    %45 = llvm.getelementptr %44[%3, %3] : (!llvm.ptr<array<8 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %46 = load %arg2[%15, %37] : memref<20x30xf64>
    %47 = llvm.mlir.cast %46 : f64 to !llvm.double
    %48 = llvm.call @fprintf(%43, %45, %47) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.double) -> !llvm.i32
    %49 = addi %35, %c1_i32 : i32
    br ^bb3(%49 : i32)
  ^bb5:  // pred: ^bb3
    %50 = addi %13, %c1_i32 : i32
    br ^bb1(%50 : i32)
  ^bb6(%51: i32):  // 2 preds: ^bb2, ^bb10
    %52 = cmpi "slt", %51, %arg0 : i32
    %53 = index_cast %51 : i32 to index
    cond_br %52, ^bb8(%c0_i32 : i32), ^bb7
  ^bb7:  // pred: ^bb6
    %54 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %55 = llvm.load %54 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %56 = llvm.mlir.addressof @str5 : !llvm.ptr<array<17 x i8>>
    %57 = llvm.getelementptr %56[%3, %3] : (!llvm.ptr<array<17 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %58 = llvm.mlir.addressof @str7 : !llvm.ptr<array<3 x i8>>
    %59 = llvm.getelementptr %58[%3, %3] : (!llvm.ptr<array<3 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %60 = llvm.call @fprintf(%55, %57, %59) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.i32
    %61 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %62 = llvm.load %61 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %63 = llvm.mlir.addressof @str1 : !llvm.ptr<array<15 x i8>>
    %64 = llvm.getelementptr %63[%3, %3] : (!llvm.ptr<array<15 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %65 = llvm.mlir.addressof @str8 : !llvm.ptr<array<3 x i8>>
    %66 = llvm.getelementptr %65[%3, %3] : (!llvm.ptr<array<3 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %67 = llvm.call @fprintf(%62, %64, %66) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.i32
    br ^bb11(%c0_i32 : i32)
  ^bb8(%68: i32):  // 2 preds: ^bb6, ^bb9
    %69 = cmpi "slt", %68, %arg1 : i32
    %70 = index_cast %68 : i32 to index
    cond_br %69, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    %71 = muli %51, %arg0 : i32
    %72 = addi %71, %68 : i32
    %73 = remi_signed %72, %c20_i32 : i32
    %74 = cmpi "eq", %73, %c0_i32 : i32
    scf.if %74 {
      %110 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %111 = llvm.load %110 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %112 = llvm.mlir.addressof @str3 : !llvm.ptr<array<2 x i8>>
      %113 = llvm.getelementptr %112[%3, %3] : (!llvm.ptr<array<2 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
      %114 = llvm.call @fprintf(%111, %113) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> !llvm.i32
    }
    %75 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %76 = llvm.load %75 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %77 = llvm.mlir.addressof @str4 : !llvm.ptr<array<8 x i8>>
    %78 = llvm.getelementptr %77[%3, %3] : (!llvm.ptr<array<8 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %79 = load %arg3[%53, %70] : memref<20x30xf64>
    %80 = llvm.mlir.cast %79 : f64 to !llvm.double
    %81 = llvm.call @fprintf(%76, %78, %80) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.double) -> !llvm.i32
    %82 = addi %68, %c1_i32 : i32
    br ^bb8(%82 : i32)
  ^bb10:  // pred: ^bb8
    %83 = addi %51, %c1_i32 : i32
    br ^bb6(%83 : i32)
  ^bb11(%84: i32):  // 2 preds: ^bb7, ^bb15
    %85 = cmpi "slt", %84, %arg0 : i32
    %86 = index_cast %84 : i32 to index
    cond_br %85, ^bb13(%c0_i32 : i32), ^bb12
  ^bb12:  // pred: ^bb11
    %87 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %88 = llvm.load %87 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %89 = llvm.mlir.addressof @str5 : !llvm.ptr<array<17 x i8>>
    %90 = llvm.getelementptr %89[%3, %3] : (!llvm.ptr<array<17 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %91 = llvm.mlir.addressof @str8 : !llvm.ptr<array<3 x i8>>
    %92 = llvm.getelementptr %91[%3, %3] : (!llvm.ptr<array<3 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %93 = llvm.call @fprintf(%88, %90, %92) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> !llvm.i32
    return
  ^bb13(%94: i32):  // 2 preds: ^bb11, ^bb14
    %95 = cmpi "slt", %94, %arg1 : i32
    %96 = index_cast %94 : i32 to index
    cond_br %95, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %97 = muli %84, %arg0 : i32
    %98 = addi %97, %94 : i32
    %99 = remi_signed %98, %c20_i32 : i32
    %100 = cmpi "eq", %99, %c0_i32 : i32
    scf.if %100 {
      %110 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %111 = llvm.load %110 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %112 = llvm.mlir.addressof @str3 : !llvm.ptr<array<2 x i8>>
      %113 = llvm.getelementptr %112[%3, %3] : (!llvm.ptr<array<2 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
      %114 = llvm.call @fprintf(%111, %113) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> !llvm.i32
    }
    %101 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %102 = llvm.load %101 : !llvm.ptr<ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %103 = llvm.mlir.addressof @str4 : !llvm.ptr<array<8 x i8>>
    %104 = llvm.getelementptr %103[%3, %3] : (!llvm.ptr<array<8 x i8>>, !llvm.i64, !llvm.i64) -> !llvm.ptr<i8>
    %105 = load %arg4[%86, %96] : memref<20x30xf64>
    %106 = llvm.mlir.cast %105 : f64 to !llvm.double
    %107 = llvm.call @fprintf(%102, %104, %106) : (!llvm.ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.double) -> !llvm.i32
    %108 = addi %94, %c1_i32 : i32
    br ^bb13(%108 : i32)
  ^bb15:  // pred: ^bb13
    %109 = addi %84, %c1_i32 : i32
    br ^bb11(%109 : i32)
  }
  func private @free(memref<?xi8>)
  func private @S0(%arg0: memref<20x30xf64>, %arg1: index, %arg2: memref<20xf64>, %arg3: index) attributes {scop.stmt} {
    %0 = affine.load %arg2[%arg3] : memref<20xf64>
    affine.store %0, %arg0[0, %arg1] : memref<20x30xf64>
    return
  }
  func private @S1(%arg0: memref<20x30xf64>, %arg1: index, %arg2: index, %arg3: memref<20x30xf64>) attributes {scop.stmt} {
    %cst = constant 5.000000e-01 : f64
    %0 = affine.load %arg0[%arg1, %arg2] : memref<20x30xf64>
    %1 = affine.load %arg3[%arg1, %arg2] : memref<20x30xf64>
    %2 = affine.load %arg3[%arg1 - 1, %arg2] : memref<20x30xf64>
    %3 = subf %1, %2 : f64
    %4 = mulf %cst, %3 : f64
    %5 = subf %0, %4 : f64
    affine.store %5, %arg0[%arg1, %arg2] : memref<20x30xf64>
    return
  }
  func private @S2(%arg0: memref<20x30xf64>, %arg1: index, %arg2: index, %arg3: memref<20x30xf64>) attributes {scop.stmt} {
    %cst = constant 5.000000e-01 : f64
    %0 = affine.load %arg0[%arg1, %arg2] : memref<20x30xf64>
    %1 = affine.load %arg3[%arg1, %arg2] : memref<20x30xf64>
    %2 = affine.load %arg3[%arg1, %arg2 - 1] : memref<20x30xf64>
    %3 = subf %1, %2 : f64
    %4 = mulf %cst, %3 : f64
    %5 = subf %0, %4 : f64
    affine.store %5, %arg0[%arg1, %arg2] : memref<20x30xf64>
    return
  }
  func private @S3(%arg0: memref<20x30xf64>, %arg1: index, %arg2: index, %arg3: memref<20x30xf64>, %arg4: memref<20x30xf64>) attributes {scop.stmt} {
    %cst = constant 0.69999999999999996 : f64
    %0 = affine.load %arg0[%arg1, %arg2] : memref<20x30xf64>
    %1 = affine.load %arg4[%arg1, %arg2 + 1] : memref<20x30xf64>
    %2 = affine.load %arg4[%arg1, %arg2] : memref<20x30xf64>
    %3 = subf %1, %2 : f64
    %4 = affine.load %arg3[%arg1 + 1, %arg2] : memref<20x30xf64>
    %5 = addf %3, %4 : f64
    %6 = affine.load %arg3[%arg1, %arg2] : memref<20x30xf64>
    %7 = subf %5, %6 : f64
    %8 = mulf %cst, %7 : f64
    %9 = subf %0, %8 : f64
    affine.store %9, %arg0[%arg1, %arg2] : memref<20x30xf64>
    return
  }
  func private @kernel_fdtd_2d_new(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<20x30xf64>, %arg4: memref<20x30xf64>, %arg5: memref<20x30xf64>, %arg6: memref<20xf64>) {
    %c0 = constant 0 : index
    %0 = index_cast %arg0 : i32 to index
    %1 = index_cast %arg1 : i32 to index
    %2 = index_cast %arg2 : i32 to index
    affine.for %arg7 = -1 to #map1()[%0] {
      affine.if #set0(%arg7)[%0] {
        affine.if #set1()[%0] {
          %3 = affine.apply #map0()[%0]
          call @S0(%arg4, %c0, %arg6, %3) : (memref<20x30xf64>, index, memref<20xf64>, index) -> ()
          affine.for %arg8 = #map2()[%0] to #map3()[%0, %1] {
            affine.for %arg9 = max #map4(%arg8)[%0] to min #map5(%arg8)[%0, %1] {
              %4 = affine.apply #map6(%arg9)[%0]
              call @S1(%arg4, %4, %c0, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
            }
            affine.for %arg9 = max #map4(%arg8)[%0] to min #map5(%arg8)[%0, %1] {
              %4 = affine.apply #map7(%arg9)[%0]
              call @S3(%arg5, %4, %c0, %arg4, %arg3) : (memref<20x30xf64>, index, index, memref<20x30xf64>, memref<20x30xf64>) -> ()
            }
          }
        }
      }
      affine.for %arg8 = max #map8(%arg7)[%0] to min #map9(%arg7)[%0, %2] {
        affine.if #set2(%arg7, %arg8)[%2] {
          affine.if #set3(%arg7) {
            affine.if #set4(%arg7)[%2] {
              %3 = affine.apply #map0()[%2]
              call @S2(%arg3, %c0, %3, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
            }
            affine.if #set4(%arg7)[%2] {
              %3 = affine.apply #map0()[%2]
              %4 = affine.apply #map10(%arg7)
              call @S0(%arg4, %3, %arg6, %4) : (memref<20x30xf64>, index, memref<20xf64>, index) -> ()
            }
          }
        }
        affine.for %arg9 = max #map11(%arg7, %arg8)[%2] to min #map12(%arg7)[%0] {
          affine.if #set5(%arg7, %arg8, %arg9) {
            affine.if #set6(%arg7) {
              %3 = affine.apply #map13(%arg7)
              call @S0(%arg4, %c0, %arg6, %3) : (memref<20x30xf64>, index, memref<20xf64>, index) -> ()
            }
            affine.for %arg10 = #map14(%arg7) to min #map15(%arg7)[%1] {
              affine.if #set6(%arg7) {
                %3 = affine.apply #map16(%arg7, %arg10)
                call @S1(%arg4, %3, %c0, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              }
            }
            affine.for %arg10 = #map14(%arg7) to min #map15(%arg7)[%1] {
              affine.if #set6(%arg7) {
                %3 = affine.apply #map17(%arg7, %arg10)
                call @S3(%arg5, %3, %c0, %arg4, %arg3) : (memref<20x30xf64>, index, index, memref<20x30xf64>, memref<20x30xf64>) -> ()
              }
            }
          }
          affine.if #set7(%arg7, %arg9) {
            affine.for %arg10 = max #map18(%arg7, %arg8)[%2, %1] to #map19(%arg7) {
              affine.for %arg11 = #map20(%arg8) to min #map21(%arg7, %arg8, %arg10)[%2] {
                affine.for %arg12 = #map19(%arg7) to min #map22(%arg7, %arg10)[%1] {
                  affine.if #set3(%arg7) {
                    %3 = affine.apply #map23(%arg10, %arg12)
                    %4 = affine.apply #map23(%arg10, %arg11)
                    call @S3(%arg5, %3, %4, %arg4, %arg3) : (memref<20x30xf64>, index, index, memref<20x30xf64>, memref<20x30xf64>) -> ()
                  }
                  affine.if #set3(%arg7) {
                    %3 = affine.apply #map24(%arg10, %arg12)
                    %4 = affine.apply #map24(%arg10, %arg11)
                    call @S1(%arg4, %3, %4, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
                  }
                  affine.if #set3(%arg7) {
                    %3 = affine.apply #map24(%arg10, %arg12)
                    %4 = affine.apply #map24(%arg10, %arg11)
                    call @S2(%arg3, %3, %4, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
                  }
                }
              }
              affine.if #set8(%arg7, %arg8, %arg10)[%2] {
                affine.for %arg11 = #map19(%arg7) to min #map22(%arg7, %arg10)[%1] {
                  affine.if #set3(%arg7) {
                    %3 = affine.apply #map23(%arg10, %arg11)
                    %4 = affine.apply #map25(%arg7, %arg8, %arg10)
                    call @S3(%arg5, %3, %4, %arg4, %arg3) : (memref<20x30xf64>, index, index, memref<20x30xf64>, memref<20x30xf64>) -> ()
                  }
                }
              }
            }
          }
          affine.for %arg10 = max #map26(%arg7, %arg8, %arg9)[%2] to min #map27(%arg7, %arg8, %arg9)[%0, %2] {
            affine.if #set9(%arg7, %arg8, %arg10) {
              %3 = affine.apply #map28(%arg7, %arg8, %arg10)
              call @S2(%arg3, %c0, %3, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              %4 = affine.apply #map28(%arg7, %arg8, %arg10)
              call @S0(%arg4, %4, %arg6, %arg10) : (memref<20x30xf64>, index, memref<20xf64>, index) -> ()
              affine.for %arg11 = #map29(%arg10) to min #map30(%arg9, %arg10)[%1] {
                %5 = affine.apply #map24(%arg10, %arg11)
                %6 = affine.apply #map28(%arg7, %arg8, %arg10)
                call @S1(%arg4, %5, %6, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
                %7 = affine.apply #map24(%arg10, %arg11)
                %8 = affine.apply #map28(%arg7, %arg8, %arg10)
                call @S2(%arg3, %7, %8, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              }
            }
            affine.if #set5(%arg7, %arg8, %arg9) {
              affine.if #set6(%arg7) {
                call @S0(%arg4, %c0, %arg6, %arg10) : (memref<20x30xf64>, index, memref<20xf64>, index) -> ()
              }
              affine.for %arg11 = #map29(%arg10) to min #map31(%arg7, %arg10)[%1] {
                affine.if #set6(%arg7) {
                  %3 = affine.apply #map24(%arg10, %arg11)
                  call @S1(%arg4, %3, %c0, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
                }
              }
            }
            affine.for %arg11 = max #map32(%arg7, %arg8, %arg10) to min #map33(%arg7, %arg8, %arg10)[%2] {
              %3 = affine.apply #map24(%arg10, %arg11)
              call @S2(%arg3, %c0, %3, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              %4 = affine.apply #map24(%arg10, %arg11)
              call @S0(%arg4, %4, %arg6, %arg10) : (memref<20x30xf64>, index, memref<20xf64>, index) -> ()
              affine.for %arg12 = #map29(%arg10) to min #map30(%arg9, %arg10)[%1] {
                %5 = affine.apply #map23(%arg10, %arg12)
                %6 = affine.apply #map23(%arg10, %arg11)
                call @S3(%arg5, %5, %6, %arg4, %arg3) : (memref<20x30xf64>, index, index, memref<20x30xf64>, memref<20x30xf64>) -> ()
                %7 = affine.apply #map24(%arg10, %arg12)
                %8 = affine.apply #map24(%arg10, %arg11)
                call @S1(%arg4, %7, %8, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
                %9 = affine.apply #map24(%arg10, %arg12)
                %10 = affine.apply #map24(%arg10, %arg11)
                call @S2(%arg3, %9, %10, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              }
            }
            affine.if #set10(%arg7, %arg8, %arg10)[%2] {
              affine.for %arg11 = #map29(%arg10) to min #map30(%arg9, %arg10)[%1] {
                %3 = affine.apply #map23(%arg10, %arg11)
                %4 = affine.apply #map25(%arg7, %arg8, %arg10)
                call @S3(%arg5, %3, %4, %arg4, %arg3) : (memref<20x30xf64>, index, index, memref<20x30xf64>, memref<20x30xf64>) -> ()
              }
            }
          }
          affine.if #set11(%arg7, %arg8, %arg9)[%0, %2] {
            %3 = affine.apply #map0()[%2]
            call @S2(%arg3, %c0, %3, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
            %4 = affine.apply #map0()[%2]
            %5 = affine.apply #map34(%arg7, %arg8)[%2]
            call @S0(%arg4, %4, %arg6, %5) : (memref<20x30xf64>, index, memref<20xf64>, index) -> ()
            affine.for %arg10 = #map35(%arg7, %arg8)[%2] to min #map36(%arg7, %arg8, %arg9)[%2, %1] {
              %6 = affine.apply #map37(%arg7, %arg8, %arg10)[%2]
              %7 = affine.apply #map0()[%2]
              call @S1(%arg4, %6, %7, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              %8 = affine.apply #map37(%arg7, %arg8, %arg10)[%2]
              %9 = affine.apply #map0()[%2]
              call @S2(%arg3, %8, %9, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
            }
          }
          affine.if #set12(%arg7, %arg8, %arg9)[%0, %2] {
            affine.if #set3(%arg7) {
              %3 = affine.apply #map38(%arg7, %arg8)
              call @S2(%arg3, %c0, %3, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
            }
            affine.if #set3(%arg7) {
              %3 = affine.apply #map38(%arg7, %arg8)
              %4 = affine.apply #map39(%arg7)
              call @S0(%arg4, %3, %arg6, %4) : (memref<20x30xf64>, index, memref<20xf64>, index) -> ()
            }
            affine.for %arg10 = #map40(%arg7) to min #map41(%arg7)[%1] {
              affine.if #set3(%arg7) {
                %3 = affine.apply #map42(%arg7, %arg10)
                %4 = affine.apply #map38(%arg7, %arg8)
                call @S1(%arg4, %3, %4, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              }
              affine.if #set3(%arg7) {
                %3 = affine.apply #map42(%arg7, %arg10)
                %4 = affine.apply #map38(%arg7, %arg8)
                call @S2(%arg3, %3, %4, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              }
            }
          }
          affine.if #set13(%arg7, %arg8, %arg9)[%0, %2] {
            affine.for %arg10 = max #map43(%arg7, %arg8, %arg9) to min #map44(%arg7, %arg8, %arg9)[%2] {
              %3 = affine.apply #map45(%arg9, %arg10)
              call @S2(%arg3, %c0, %3, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              %4 = affine.apply #map45(%arg9, %arg10)
              %5 = affine.apply #map46(%arg9)
              call @S0(%arg4, %4, %arg6, %5) : (memref<20x30xf64>, index, memref<20xf64>, index) -> ()
            }
          }
          affine.if #set14(%arg7, %arg8, %arg9)[%0] {
            affine.if #set6(%arg7) {
              %3 = affine.apply #map39(%arg7)
              call @S0(%arg4, %c0, %arg6, %3) : (memref<20x30xf64>, index, memref<20xf64>, index) -> ()
            }
          }
        }
        affine.if #set15(%arg7)[%0, %1] {
          affine.if #set3(%arg7) {
            affine.for %arg9 = max #map47(%arg7, %arg8)[%2, %1] to %0 {
              affine.for %arg10 = #map20(%arg8) to min #map21(%arg7, %arg8, %arg9)[%2] {
                affine.for %arg11 = #map19(%arg7) to min #map22(%arg7, %arg9)[%1] {
                  %3 = affine.apply #map23(%arg9, %arg11)
                  %4 = affine.apply #map23(%arg9, %arg10)
                  call @S3(%arg5, %3, %4, %arg4, %arg3) : (memref<20x30xf64>, index, index, memref<20x30xf64>, memref<20x30xf64>) -> ()
                  %5 = affine.apply #map24(%arg9, %arg11)
                  %6 = affine.apply #map24(%arg9, %arg10)
                  call @S1(%arg4, %5, %6, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
                  %7 = affine.apply #map24(%arg9, %arg11)
                  %8 = affine.apply #map24(%arg9, %arg10)
                  call @S2(%arg3, %7, %8, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
                }
              }
              affine.if #set8(%arg7, %arg8, %arg9)[%2] {
                affine.for %arg10 = #map19(%arg7) to min #map22(%arg7, %arg9)[%1] {
                  %3 = affine.apply #map23(%arg9, %arg10)
                  %4 = affine.apply #map25(%arg7, %arg8, %arg9)
                  call @S3(%arg5, %3, %4, %arg4, %arg3) : (memref<20x30xf64>, index, index, memref<20x30xf64>, memref<20x30xf64>) -> ()
                }
              }
            }
          }
        }
        affine.for %arg9 = #map48(%arg7) to min #map49(%arg7, %arg8)[%0, %2, %1] {
          affine.if #set16(%arg7, %arg8, %arg9)[%1] {
            affine.for %arg10 = #map20(%arg9) to min #map50(%arg7, %arg9)[%1] {
              affine.if #set6(%arg7) {
                %3 = affine.apply #map16(%arg7, %arg10)
                call @S1(%arg4, %3, %c0, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              }
            }
            affine.for %arg10 = #map20(%arg9) to min #map50(%arg7, %arg9)[%1] {
              affine.if #set6(%arg7) {
                %3 = affine.apply #map17(%arg7, %arg10)
                call @S3(%arg5, %3, %c0, %arg4, %arg3) : (memref<20x30xf64>, index, index, memref<20x30xf64>, memref<20x30xf64>) -> ()
              }
            }
          }
          affine.for %arg10 = max #map51(%arg7, %arg8, %arg9)[%2, %1] to min #map52(%arg7, %arg8)[%0, %2] {
            affine.if #set9(%arg7, %arg8, %arg10) {
              affine.for %arg11 = #map20(%arg9) to min #map30(%arg9, %arg10)[%1] {
                %3 = affine.apply #map24(%arg10, %arg11)
                %4 = affine.apply #map28(%arg7, %arg8, %arg10)
                call @S1(%arg4, %3, %4, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
                %5 = affine.apply #map24(%arg10, %arg11)
                %6 = affine.apply #map28(%arg7, %arg8, %arg10)
                call @S2(%arg3, %5, %6, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              }
            }
            affine.if #set17(%arg7, %arg8) {
              affine.for %arg11 = #map20(%arg9) to min #map30(%arg9, %arg10)[%1] {
                affine.if #set6(%arg7) {
                  %3 = affine.apply #map24(%arg10, %arg11)
                  call @S1(%arg4, %3, %c0, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
                }
              }
            }
            affine.for %arg11 = max #map32(%arg7, %arg8, %arg10) to min #map33(%arg7, %arg8, %arg10)[%2] {
              affine.for %arg12 = #map20(%arg9) to min #map30(%arg9, %arg10)[%1] {
                %3 = affine.apply #map23(%arg10, %arg12)
                %4 = affine.apply #map23(%arg10, %arg11)
                call @S3(%arg5, %3, %4, %arg4, %arg3) : (memref<20x30xf64>, index, index, memref<20x30xf64>, memref<20x30xf64>) -> ()
                %5 = affine.apply #map24(%arg10, %arg12)
                %6 = affine.apply #map24(%arg10, %arg11)
                call @S1(%arg4, %5, %6, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
                %7 = affine.apply #map24(%arg10, %arg12)
                %8 = affine.apply #map24(%arg10, %arg11)
                call @S2(%arg3, %7, %8, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              }
            }
            affine.if #set10(%arg7, %arg8, %arg10)[%2] {
              affine.for %arg11 = #map20(%arg9) to min #map30(%arg9, %arg10)[%1] {
                %3 = affine.apply #map23(%arg10, %arg11)
                %4 = affine.apply #map25(%arg7, %arg8, %arg10)
                call @S3(%arg5, %3, %4, %arg4, %arg3) : (memref<20x30xf64>, index, index, memref<20x30xf64>, memref<20x30xf64>) -> ()
              }
            }
          }
          affine.if #set18(%arg7, %arg8)[%0, %2] {
            affine.for %arg10 = #map20(%arg9) to min #map53(%arg7, %arg9)[%1] {
              %3 = affine.apply #map42(%arg7, %arg10)
              %4 = affine.apply #map38(%arg7, %arg8)
              call @S1(%arg4, %3, %4, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              %5 = affine.apply #map42(%arg7, %arg10)
              %6 = affine.apply #map38(%arg7, %arg8)
              call @S2(%arg3, %5, %6, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
            }
          }
          affine.if #set19(%arg7, %arg8)[%0, %2] {
            affine.for %arg10 = #map20(%arg9) to min #map36(%arg7, %arg8, %arg9)[%2, %1] {
              %3 = affine.apply #map37(%arg7, %arg8, %arg10)[%2]
              %4 = affine.apply #map0()[%2]
              call @S1(%arg4, %3, %4, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              %5 = affine.apply #map37(%arg7, %arg8, %arg10)[%2]
              %6 = affine.apply #map0()[%2]
              call @S2(%arg3, %5, %6, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
            }
          }
          affine.if #set20(%arg7, %arg8)[%0] {
            affine.for %arg10 = #map20(%arg9) to min #map53(%arg7, %arg9)[%1] {
              affine.if #set6(%arg7) {
                %3 = affine.apply #map42(%arg7, %arg10)
                call @S1(%arg4, %3, %c0, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              }
            }
          }
        }
        affine.if #set18(%arg7, %arg8)[%0, %2] {
          affine.if #set21(%arg7)[%1] {
            %3 = affine.apply #map0()[%1]
            %4 = affine.apply #map38(%arg7, %arg8)
            call @S1(%arg4, %3, %4, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
            %5 = affine.apply #map0()[%1]
            %6 = affine.apply #map38(%arg7, %arg8)
            call @S2(%arg3, %5, %6, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
          }
        }
        affine.if #set19(%arg7, %arg8)[%0, %2] {
          affine.if #set22()[%2, %1] {
            %3 = affine.apply #map0()[%1]
            %4 = affine.apply #map0()[%2]
            call @S1(%arg4, %3, %4, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
            %5 = affine.apply #map0()[%1]
            %6 = affine.apply #map0()[%2]
            call @S2(%arg3, %5, %6, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
          }
        }
        affine.if #set20(%arg7, %arg8)[%0] {
          affine.if #set21(%arg7)[%1] {
            affine.if #set6(%arg7) {
              %3 = affine.apply #map0()[%1]
              call @S1(%arg4, %3, %c0, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
            }
          }
        }
      }
      affine.if #set23(%arg7) {
        affine.if #set24()[%2] {
          %3 = affine.apply #map0()[%2]
          call @S2(%arg3, %c0, %3, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
          %4 = affine.apply #map0()[%2]
          call @S0(%arg4, %4, %arg6, %c0) : (memref<20x30xf64>, index, memref<20xf64>, index) -> ()
          affine.for %arg8 = 1 to min #map54()[%1] {
            %5 = affine.apply #map0()[%2]
            call @S1(%arg4, %arg8, %5, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
            %6 = affine.apply #map0()[%2]
            call @S2(%arg3, %arg8, %6, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
          }
          affine.for %arg8 = 1 to #map55()[%1] {
            affine.for %arg9 = #map20(%arg8) to min #map56(%arg8)[%1] {
              %5 = affine.apply #map0()[%2]
              call @S1(%arg4, %arg9, %5, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
              %6 = affine.apply #map0()[%2]
              call @S2(%arg3, %arg9, %6, %arg5) : (memref<20x30xf64>, index, index, memref<20x30xf64>) -> ()
            }
          }
        }
      }
    }
    return
  }
}

