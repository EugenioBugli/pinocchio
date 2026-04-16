#!/bin/bash
set -euxo pipefail

cmake -G Ninja ${CMAKE_ARGS} \
    -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_WITH_URDF_SUPPORT=OFF \
    -DBUILD_WITH_COLLISION_SUPPORT=ON \
    -DBUILD_TESTING=OFF \
    -DBUILD_BENCHMARK=OFF \
    -DINSTALL_DOCUMENTATION=OFF \
    -B build \
    -S .

cmake --build build -j4
cmake --install build
