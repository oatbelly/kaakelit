# Copyright 2026 Oatbelly <oatbelly@tutamail.com>
# SPDX-License-Identifier: Apache-2.0

find_package(GTest REQUIRED)

add_executable(kaakelit.tests)

target_sources(
  kaakelit.tests
  PRIVATE
    add.test.cpp
)

target_link_libraries(
  kaakelit.tests
  PRIVATE
    kaakelit
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(kaakelit.tests)
