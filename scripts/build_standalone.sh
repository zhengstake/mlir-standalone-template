#!/bin/bash -f

rm -rf build
mkdir build && cd build
cmake -G Ninja .. -DMLIR_DIR=${MLIR_DIR}/lib/cmake/mlir -DLLVM_EXTERNAL_LIT=$LLVM_BUILD_DIR/bin/llvm-lit
cmake --build . --target check-standalone-opt

