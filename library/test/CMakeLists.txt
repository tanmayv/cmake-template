# GTest include code would
# go somewhere in here

include(FetchContent)

FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG        release-1.11.0
)
FetchContent_MakeAvailable(googletest)

add_library(GTest::GTest INTERFACE IMPORTED)
target_link_libraries(GTest::GTest INTERFACE gtest_main)

macro(package_add_test TEST_TARGET)
  add_executable(${TEST_TARGET}_test ${TEST_TARGET}_test.cc)
  target_link_libraries(${TEST_TARGET}_test PRIVATE GTest::GTest ${TEST_TARGET})
  add_test(NAME ${TEST_TARGET}_test COMMAND ${TEST_TARGET}_test)
endmacro()

package_add_test(multiply)
