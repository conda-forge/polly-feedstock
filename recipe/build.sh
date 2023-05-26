#!/bin/bash
set -ex

cd polly

mkdir -p build && cd build
cmake -G "Unix Makefiles" \
    -DCMAKE_BUILD_TYPE="Release" \
    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
    -DLLVM_ENABLE_PIC=1 \ \
    -DCMAKE_CXX_FLAGS='-std=c++17'
    ..
make -j${CPU_COUNT}

make install
