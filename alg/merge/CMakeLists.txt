cmake_minimum_required(VERSION 3.14)
project(SortedMergeProject CXX)

add_library(libmerge sorted_merge_3way.cpp)
target_include_directories(libmerge PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

add_subdirectory(cmd)
add_subdirectory(tests)
add_subdirectory(benchmark)
target_link_libraries(run-tests gtest gtest_main)
add_custom_target(eval
  COMMAND bm-sorted_merge_3way-cmd
  DEPENDS bm-sorted_merge_3way-cmd
  COMMENT "Running merge benchmark"
)
add_library(merge 
  sorted_merge_3way.cpp
  linked_list_string.cpp
)
target_include_directories(merge PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

add_subdirectory(cmd)

if (alg_BUILD_TESTS)
add_subdirectory(tests)
endif(alg_BUILD_TESTS)

if (alg_BUILD_BENCHMARKS)
add_subdirectory(benchmark)
endif(alg_BUILD_BENCHMARKS)
