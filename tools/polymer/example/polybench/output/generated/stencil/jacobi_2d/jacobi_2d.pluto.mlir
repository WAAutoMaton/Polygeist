#map0 = affine_map<()[s0] -> (s0 - 1)>
#map1 = affine_map<()[s0, s1] -> ((s0 - 1) floordiv 8 + 1, (s0 * 4 + s1 - 8) floordiv 32 + 1)>
#map2 = affine_map<()[s0] -> ((s0 - 1) ceildiv 16)>
#map3 = affine_map<()[s0, s1] -> ((s0 * 2 + s1 - 3) floordiv 32 + 1)>
#map4 = affine_map<(d0)[s0] -> (s0 * 2, d0 * 32)>
#map5 = affine_map<(d0)[s0, s1] -> (d0 * 32 + 32, s0 * 2 + s1 - 2)>
#map6 = affine_map<(d0)[s0] -> (d0 ceildiv 2, (d0 * 16 - s0 + 2) ceildiv 16)>
#map7 = affine_map<(d0)[s0, s1] -> ((s0 * 2 + s1 - 4) floordiv 32 + 1, (d0 * 16 + s1 + 13) floordiv 32 + 1, (d0 * 32 + s1 + 28) floordiv 32 + 1)>
#map8 = affine_map<(d0) -> (d0 * 8 + 7)>
#map9 = affine_map<()[s0] -> (s0 - 2)>
#map10 = affine_map<(d0, d1)[s0] -> (0, (d0 - 1) ceildiv 2, (d1 * 32 - s0 - 27) ceildiv 32)>
#map11 = affine_map<(d0, d1)[s0, s1] -> ((s0 * 2 + s1 - 4) floordiv 32 + 1, (d0 * 16 + s1 + 28) floordiv 32 + 1, (d1 * 32 + s1 + 27) floordiv 32 + 1)>
#map12 = affine_map<(d0, d1)[s0] -> (d0 * 32, d1 * 32 - s0 + 3)>
#map13 = affine_map<(d0, d1) -> (d0 * 32 + 1, d1 * 32 + 32)>
#map14 = affine_map<(d0)[s0] -> ((d0 * 32 - s0 + 1) ceildiv 2)>
#map15 = affine_map<(d0, d1, d2)[s0] -> (d0 * 32, d1 * 32 - s0 + 3, d2 * -32 + d0 * 32 + d1 * 64 - s0 * 2 - 27)>
#map16 = affine_map<(d0, d1, d2)[s0] -> (d0 * 32 + 32, d1 * -32 + d0 * 32 + d2 * 64 - s0 * 2 + 5)>
#map17 = affine_map<(d0)[s0] -> (d0 * -31 + s0 - 2)>
#map18 = affine_map<(d0, d1) -> (d0 * 32, d1 * 16 + 2)>
#map19 = affine_map<(d0, d1)[s0] -> (d0 * 32 + 32, d1 * 16 + s0)>
#map20 = affine_map<(d0) -> (d0 * 8)>
#map21 = affine_map<(d0, d1, d2)[s0] -> (0, (d0 * 32 - s0 + 2) ceildiv 2, (d1 * 32 - s0 + 2) ceildiv 2, d2 * 8, d2 * 16 - d0 * 16 + 1)>
#map22 = affine_map<(d0, d1, d2)[s0, s1] -> (d0 * 16 - d1 * 16 + s0 floordiv 2 + 15, s1, d0 * 8 + 16, d1 * 16 + 15, d2 * 16 + 15)>
#map23 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 1)>
#map24 = affine_map<(d0, d1)[s0] -> (d0 * 32 + 32, d1 * 2 + s0 - 1)>
#map25 = affine_map<(d0, d1, d2) -> (d0 * 32, d1 * 2 + 2, d2 * -32 + d0 * 32 + d1 * 4 - 31)>
#map26 = affine_map<(d0, d1, d2) -> (d0 * -32 + d1 * 32 + d2 * 4 - 29)>
#map27 = affine_map<(d0) -> (-d0)>
#map28 = affine_map<(d0, d1, d2) -> (d0 * 32, d1 * 2 + 2, d2 * -32 + d0 * 32 + d1 * 4 - 29)>
#map29 = affine_map<(d0, d1, d2)[s0] -> (d0 * 32 + 32, d1 * -32 + d0 * 32 + d2 * 4 + 1, d2 * 2 + s0 - 1)>
#map30 = affine_map<(d0, d1) -> (d0 * 32, d1 * 2 + 2)>
#map31 = affine_map<(d0) -> (-d0 - 1)>
#map32 = affine_map<(d0, d1, d2) -> (d0 * -32 + d1 * 32 + d2 * 4 + 1)>
#map33 = affine_map<(d0, d1, d2)[s0] -> (d0 * 32 + 32, d1 * 2 + s0, d2 * -32 + d0 * 32 + d1 * 4 + 3)>
#map34 = affine_map<(d0, d1)[s0] -> (d0 * 32 + 32, d1 * 2 + s0)>
#map35 = affine_map<(d0, d1, d2)[s0] -> (d0 * 32, d1 * 32 - d2 * 32 + s0 + 30)>
#map36 = affine_map<(d0, d1, d2)[s0] -> (d0 * 32 + 32, d1 * 32 - d2 * 32 + s0 * 2 + 28)>
#map37 = affine_map<()[s0] -> ((s0 + 29) ceildiv 2)>
#map38 = affine_map<(d0, d1, d2) -> (d0 * 32, d1 * 32 + 31, d2 * -32 + d0 * 32 + d1 * 64 + 29)>
#map39 = affine_map<(d0, d1, d2)[s0] -> (d0 * 32 + 32, d1 * 32 + s0 + 29, d2 * -32 + d0 * 32 + d1 * 64 + 61)>
#map40 = affine_map<(d0) -> (d0 * 16 + 15)>
#map41 = affine_map<(d0) -> (d0 * -31 - 30)>
#map42 = affine_map<(d0) -> (d0 * 32)>
#map43 = affine_map<(d0, d1)[s0] -> (d0 * 32 + 32, d1 * 16 + s0 + 29)>
#map44 = affine_map<(d0) -> (d0 * 8 + 15)>
#map45 = affine_map<(d0) -> (d0 * 16)>
#map46 = affine_map<(d0, d1)[s0] -> (s0 * 2, d0 * 32, d1 * -32 + d0 * 32 + s0 * 4 - 33)>
#map47 = affine_map<(d0, d1)[s0] -> (d0 * 32 + 32, d1 * -32 + d0 * 32 + s0 * 4 - 1)>
#map48 = affine_map<(d0)[s0] -> (d0 - s0 * 2 + 1)>
#map49 = affine_map<()[s0] -> ((s0 - 3) floordiv 32 + 1)>
#map50 = affine_map<(d0) -> (1, d0 * 32)>
#map51 = affine_map<(d0)[s0] -> (s0 - 1, d0 * 32 + 32)>
#map52 = affine_map<()[s0] -> ((s0 - 15) ceildiv 16)>
#set0 = affine_set<(d0)[s0] : (d0 * 8 - (s0 - 1) == 0)>
#set1 = affine_set<()[s0] : ((s0 + 15) mod 16 == 0)>
#set2 = affine_set<(d0, d1)[s0] : (d0 - 1 >= 0, d0 * 16 - (d1 * 32 - s0 - 12) == 0)>
#set3 = affine_set<(d0) : ((d0 + 1) mod 2 == 0)>
#set4 = affine_set<(d0)[s0] : ((d0 * 16 + s0 * 31 + 20) mod 32 == 0)>
#set5 = affine_set<(d0, d1)[s0] : ((d1 * 32 - s0 + 1) floordiv 16 - d0 >= 0, d1 - (s0 - 1) ceildiv 32 >= 0)>
#set6 = affine_set<()[s0] : ((s0 + 1) mod 2 == 0)>
#set7 = affine_set<(d0, d1, d2)[s0] : ((d1 * 32 - s0 + 1) floordiv 16 - d0 >= 0, (d2 * 32 + d1 * 32 - s0 - 1) floordiv 32 - d0 >= 0, d1 - d2 - 1 >= 0, d1 - (s0 - 1) ceildiv 32 >= 0)>
#set8 = affine_set<(d0, d1, d2)[s0] : (d0 - d1 * 2 == 0, d0 - (d2 * 32 - s0 + 1) ceildiv 16 >= 0)>
#set9 = affine_set<(d0) : (d0 mod 2 == 0)>
#set10 = affine_set<(d0, d1, d2) : (d0 - (d1 * 16 + d2 - 16) ceildiv 16 >= 0, d2 floordiv 16 - d1 >= 0)>
#set11 = affine_set<(d0, d1) : (d1 floordiv 16 - d0 >= 0)>
#set12 = affine_set<(d0, d1)[s0] : (d0 - (d1 * 2 + s0 - 32) ceildiv 32 >= 0)>
#set13 = affine_set<(d0, d1, d2)[s0] : ((d1 * 32 + d2 * 2 - s0 + 1) floordiv 32 - d0 >= 0, d1 - (d2 * 2 + s0 - 32) ceildiv 32 >= 0)>
#set14 = affine_set<(d0, d1, d2)[s0, s1] : ((d1 * 32 - s0 + 1) floordiv 16 - d0 >= 0, (d1 * 32 + s1 * 2 - s0 - 31) floordiv 32 - d0 >= 0, (d1 * 32 + d2 * 32 - s0 - 1) floordiv 32 - d0 >= 0)>
#set15 = affine_set<(d0, d1, d2)[s0, s1] : (d0 - (d1 * 32 + d2 * 32 - s0 + 1) ceildiv 32 >= 0, d0 - d2 * 2 >= 0, -d2 + s1 floordiv 16 - 1 >= 0)>
#set16 = affine_set<(d0, d1, d2)[s0] : (d0 - d1 * 2 == 0, -d0 + s0 floordiv 8 - 2 >= 0, d2 * 2 - d0 - 2 >= 0)>
#set17 = affine_set<(d0, d1)[s0] : (d0 - d1 * 2 == 0, -d0 + s0 floordiv 8 - 2 >= 0)>
#set18 = affine_set<(d0)[s0] : ((d0 * 16 + s0 + 28) mod 32 == 0)>
#set19 = affine_set<(d0, d1)[s0] : (-d0 + s0 floordiv 8 - 2 >= 0, d1 * 2 - d0 - 1 >= 0)>
#set20 = affine_set<(d0)[s0] : ((d0 * 16 + s0 + 29) mod 32 == 0)>
#set21 = affine_set<(d0)[s0] : (d0 - (s0 - 15) ceildiv 8 >= 0)>
#set22 = affine_set<()[s0, s1] : ((s0 * 2 + s1 + 29) mod 32 == 0)>
#set23 = affine_set<(d0) : (d0 + 1 == 0)>
#set24 = affine_set<()[s0] : ((s0 + 29) mod 32 == 0)>
#set25 = affine_set<(d0)[s0] : (d0 - (s0 - 8) ceildiv 8 >= 0)>
#set26 = affine_set<()[s0] : (s0 - 3 == 0)>
#set27 = affine_set<()[s0] : ((s0 + 7) mod 8 == 0)>
module  {
  func @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<1300x1300xf64>, %arg3: memref<1300x1300xf64>) {
    %0 = index_cast %arg0 : i32 to index
    %1 = index_cast %arg1 : i32 to index
    affine.for %arg4 = 0 to %0 {
      affine.for %arg5 = 1 to #map0()[%1] {
        affine.for %arg6 = 1 to #map0()[%1] {
          call @S0(%arg3, %arg5, %arg6, %arg2) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
        }
      }
      affine.for %arg5 = 1 to #map0()[%1] {
        affine.for %arg6 = 1 to #map0()[%1] {
          call @S1(%arg2, %arg5, %arg6, %arg3) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
        }
      }
    }
    return
  }
  func @S0(%arg0: memref<1300x1300xf64>, %arg1: index, %arg2: index, %arg3: memref<1300x1300xf64>) attributes {scop.stmt} {
    %cst = constant 2.000000e-01 : f64
    %0 = affine.load %arg3[symbol(%arg1), symbol(%arg2)] : memref<1300x1300xf64>
    %1 = affine.load %arg3[symbol(%arg1), symbol(%arg2) - 1] : memref<1300x1300xf64>
    %2 = addf %0, %1 : f64
    %3 = affine.load %arg3[symbol(%arg1), symbol(%arg2) + 1] : memref<1300x1300xf64>
    %4 = addf %2, %3 : f64
    %5 = affine.load %arg3[symbol(%arg1) + 1, symbol(%arg2)] : memref<1300x1300xf64>
    %6 = addf %4, %5 : f64
    %7 = affine.load %arg3[symbol(%arg1) - 1, symbol(%arg2)] : memref<1300x1300xf64>
    %8 = addf %6, %7 : f64
    %9 = mulf %cst, %8 : f64
    affine.store %9, %arg0[symbol(%arg1), symbol(%arg2)] : memref<1300x1300xf64>
    return
  }
  func @S1(%arg0: memref<1300x1300xf64>, %arg1: index, %arg2: index, %arg3: memref<1300x1300xf64>) attributes {scop.stmt} {
    %cst = constant 2.000000e-01 : f64
    %0 = affine.load %arg3[symbol(%arg1), symbol(%arg2)] : memref<1300x1300xf64>
    %1 = affine.load %arg3[symbol(%arg1), symbol(%arg2) - 1] : memref<1300x1300xf64>
    %2 = addf %0, %1 : f64
    %3 = affine.load %arg3[symbol(%arg1), symbol(%arg2) + 1] : memref<1300x1300xf64>
    %4 = addf %2, %3 : f64
    %5 = affine.load %arg3[symbol(%arg1) + 1, symbol(%arg2)] : memref<1300x1300xf64>
    %6 = addf %4, %5 : f64
    %7 = affine.load %arg3[symbol(%arg1) - 1, symbol(%arg2)] : memref<1300x1300xf64>
    %8 = addf %6, %7 : f64
    %9 = mulf %cst, %8 : f64
    affine.store %9, %arg0[symbol(%arg1), symbol(%arg2)] : memref<1300x1300xf64>
    return
  }
  func @kernel_jacobi_2d_new(%arg0: i32, %arg1: i32, %arg2: memref<1300x1300xf64>, %arg3: memref<1300x1300xf64>) {
    %c0 = constant 0 : index
    %c1 = constant 1 : index
    %0 = index_cast %arg1 : i32 to index
    %1 = index_cast %arg0 : i32 to index
    affine.for %arg4 = -1 to min #map1()[%1, %0] {
      affine.if #set0(%arg4)[%1] {
        affine.if #set1()[%1] {
          affine.for %arg5 = #map2()[%1] to #map3()[%1, %0] {
            affine.for %arg6 = max #map4(%arg5)[%1] to min #map5(%arg5)[%1, %0] {
              %2 = affine.apply #map0()[%1]
              call @S1(%arg2, %2, %c1, %arg3) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
            }
          }
        }
      }
      affine.for %arg5 = max #map6(%arg4)[%1] to min #map7(%arg4)[%1, %0] {
        affine.if #set2(%arg4, %arg5)[%0] {
          affine.if #set3(%arg4) {
            affine.if #set4(%arg4)[%0] {
              %2 = affine.apply #map8(%arg4)
              %3 = affine.apply #map9()[%0]
              call @S0(%arg3, %2, %3, %arg2) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
            }
          }
        }
        affine.for %arg6 = max #map10(%arg4, %arg5)[%0] to min #map11(%arg4, %arg5)[%1, %0] {
          affine.if #set5(%arg4, %arg5)[%0] {
            affine.if #set6()[%0] {
              affine.for %arg7 = max #map12(%arg5, %arg6)[%0] to min #map13(%arg5, %arg6) {
                %2 = affine.apply #map14(%arg5)[%0]
                %3 = affine.apply #map9()[%0]
                call @S1(%arg2, %2, %3, %arg3) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
              }
            }
          }
          affine.if #set7(%arg4, %arg5, %arg6)[%0] {
            affine.if #set6()[%0] {
              affine.for %arg7 = max #map15(%arg4, %arg5, %arg6)[%0] to min #map16(%arg4, %arg5, %arg6)[%0] {
                %2 = affine.apply #map14(%arg6)[%0]
                %3 = affine.apply #map17(%arg6)[%0]
                call @S1(%arg2, %2, %3, %arg3) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
              }
            }
          }
          affine.if #set8(%arg4, %arg5, %arg6)[%0] {
            affine.for %arg7 = max #map18(%arg4, %arg6) to min #map19(%arg4, %arg6)[%0] {
              affine.if #set9(%arg4) {
                %2 = affine.apply #map20(%arg4)
                call @S1(%arg2, %2, %c1, %arg3) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
              }
            }
          }
          affine.for %arg7 = max #map21(%arg4, %arg5, %arg6)[%0] to min #map22(%arg4, %arg5, %arg6)[%1, %0] {
            affine.if #set10(%arg4, %arg5, %arg7) {
              affine.for %arg8 = max #map23(%arg6, %arg7) to min #map24(%arg6, %arg7)[%0] {
                call @S0(%arg3, %arg7, %c1, %arg2) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
              }
            }
            affine.for %arg8 = max #map25(%arg4, %arg5, %arg7) to #map26(%arg4, %arg5, %arg7) {
              affine.for %arg9 = max #map23(%arg6, %arg7) to min #map24(%arg6, %arg7)[%0] {
                %2 = affine.apply #map27(%arg7)
                call @S0(%arg3, %arg7, %2, %arg2) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
              }
            }
            affine.for %arg8 = max #map28(%arg4, %arg5, %arg7) to min #map29(%arg4, %arg5, %arg7)[%0] {
              affine.if #set11(%arg6, %arg7) {
                %2 = affine.apply #map27(%arg7)
                call @S0(%arg3, %arg7, %2, %arg2) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
              }
              affine.for %arg9 = max #map30(%arg6, %arg7) to min #map24(%arg6, %arg7)[%0] {
                %2 = affine.apply #map31(%arg7)
                call @S1(%arg2, %arg7, %2, %arg3) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
                %3 = affine.apply #map27(%arg7)
                call @S0(%arg3, %arg7, %3, %arg2) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
              }
              affine.if #set12(%arg6, %arg7)[%0] {
                %2 = affine.apply #map31(%arg7)
                call @S1(%arg2, %arg7, %2, %arg3) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
              }
            }
            affine.for %arg8 = #map32(%arg4, %arg5, %arg7) to min #map33(%arg4, %arg5, %arg7)[%0] {
              affine.for %arg9 = max #map30(%arg6, %arg7) to min #map34(%arg6, %arg7)[%0] {
                %2 = affine.apply #map31(%arg7)
                call @S1(%arg2, %arg7, %2, %arg3) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
              }
            }
            affine.if #set13(%arg4, %arg5, %arg7)[%0] {
              affine.for %arg8 = max #map30(%arg6, %arg7) to min #map34(%arg6, %arg7)[%0] {
                %2 = affine.apply #map9()[%0]
                call @S1(%arg2, %arg7, %2, %arg3) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
              }
            }
          }
          affine.if #set14(%arg4, %arg5, %arg6)[%1, %0] {
            affine.if #set6()[%0] {
              affine.for %arg7 = max #map35(%arg4, %arg5, %arg6)[%0] to min #map36(%arg4, %arg5, %arg6)[%0] {
                %2 = affine.apply #map37()[%0]
                %3 = affine.apply #map9()[%0]
                call @S0(%arg3, %2, %3, %arg2) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
              }
            }
          }
          affine.if #set15(%arg4, %arg5, %arg6)[%1, %0] {
            affine.for %arg7 = max #map38(%arg4, %arg5, %arg6) to min #map39(%arg4, %arg5, %arg6)[%0] {
              %2 = affine.apply #map40(%arg6)
              %3 = affine.apply #map41(%arg6)
              call @S0(%arg3, %2, %3, %arg2) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
            }
          }
          affine.if #set16(%arg4, %arg5, %arg6)[%1] {
            affine.for %arg7 = #map42(%arg6) to min #map43(%arg4, %arg6)[%0] {
              affine.if #set9(%arg4) {
                %2 = affine.apply #map44(%arg4)
                call @S0(%arg3, %2, %c1, %arg2) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
              }
            }
          }
        }
        affine.if #set17(%arg4, %arg5)[%1] {
          affine.if #set18(%arg4)[%0] {
            affine.if #set9(%arg4) {
              %2 = affine.apply #map44(%arg4)
              call @S0(%arg3, %2, %c1, %arg2) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
            }
          }
        }
        affine.if #set19(%arg4, %arg5)[%1] {
          affine.if #set20(%arg4)[%0] {
            %2 = affine.apply #map44(%arg4)
            %3 = affine.apply #map45(%arg4)
            call @S1(%arg2, %2, %3, %arg3) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
          }
        }
        affine.if #set21(%arg4)[%1] {
          affine.if #set22()[%1, %0] {
            affine.for %arg6 = max #map46(%arg4, %arg5)[%1] to min #map47(%arg4, %arg5)[%1] {
              %2 = affine.apply #map0()[%1]
              %3 = affine.apply #map48(%arg6)[%1]
              call @S1(%arg2, %2, %3, %arg3) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
            }
          }
        }
      }
      affine.if #set23(%arg4) {
        affine.if #set24()[%0] {
          affine.for %arg5 = 0 to #map49()[%0] {
            affine.for %arg6 = max #map50(%arg5) to min #map51(%arg5)[%0] {
              %2 = affine.apply #map9()[%0]
              call @S0(%arg3, %c0, %2, %arg2) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
            }
          }
        }
      }
      affine.if #set25(%arg4)[%1] {
        affine.if #set22()[%1, %0] {
          affine.for %arg5 = #map52()[%1] to #map3()[%1, %0] {
            affine.for %arg6 = max #map4(%arg5)[%1] to min #map5(%arg5)[%1, %0] {
              %2 = affine.apply #map0()[%1]
              %3 = affine.apply #map9()[%0]
              call @S1(%arg2, %2, %3, %arg3) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
            }
          }
        }
      }
    }
    affine.if #set26()[%0] {
      affine.if #set27()[%1] {
        affine.if #set1()[%1] {
          %2 = affine.apply #map0()[%1]
          call @S1(%arg2, %2, %c1, %arg3) : (memref<1300x1300xf64>, index, index, memref<1300x1300xf64>) -> ()
        }
      }
    }
    return
  }
}

