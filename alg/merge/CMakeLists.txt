add_library(libmerge sorted_merge_3way.cpp)
target_include_directories(libmerge PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

add_subdirectory(cmd)
add_subdirectory(tests)
add_subdirectory(benchmark)

# Link the test executable with gtest AND the Threads library
target_link_libraries(run-tests gtest gtest_main Threads::Threads)

add_custom_target(eval
  COMMAND bm-sorted_merge_3way-cmd
  DEPENDS bm-sorted_merge_3way-cmd
  COMMENT "Running merge benchmark"
)
