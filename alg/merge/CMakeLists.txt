cmake_minimum_required(VERSION 3.14)
project(SortedMergeProject CXX)

include(FetchContent)

FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/refs/tags/v1.14.0.zip
)
FetchContent_MakeAvailable(googletest)

FetchContent_Declare(
  benchmark
  URL https://github.com/google/benchmark/archive/refs/tags/v1.8.3.zip
)
FetchContent_MakeAvailable(benchmark)

add_library(libmerge sorted_merge_3way.cpp)
target_include_directories(libmerge PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

add_subdirectory(cmd)
add_subdirectory(tests)
add_subdirectory(benchmark)

target_link_libraries(run-tests GTest::gtest GTest::gtest_main)

add_custom_target(eval
  COMMAND bm-sorted_merge_3way-cmd
  DEPENDS bm-sorted_merge_3way-cmd
  COMMENT "Running merge benchmark"
)
