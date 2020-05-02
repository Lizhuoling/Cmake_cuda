project(cuda_device)
cmake_minimum_required(VERSION 3.2)

find_package(CUDA REQUIRED)
set(CUDA_NVCC_FLAGS -O3;-G;-g)
file(GLOB_RECURSE CURRENT_HEADERS *.cuh)
file(GLOB CURRENT_SOURCES *.cu)

cuda_add_library(device STATIC ${CURRENT_HEADERS} ${CURRENT_SOURCES})
