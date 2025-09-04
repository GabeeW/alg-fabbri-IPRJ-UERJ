cmake_minimum_required(VERSION 3.14)
project(SortedMergeProject CXX)

find_package(Threads REQUIRED)

add_library(libmerge sorted_merge_3way.cpp)
target_include_directories(libmerge PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

add_subdirectory(cmd)
add_subdirectory(tests)
add_subdirectory(benchmark)
