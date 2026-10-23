# Copyright 2026 Oatbelly <oatbelly@tutamail.com>
# SPDX-License-Identifier: Apache-2.0

cmake_minimum_required(VERSION 4.4)

project(
  kaakelit
  VERSION 0.1.0
  SPDX_LICENSE Apache-2.0
  DESCRIPTION "Use Tiled maps in your game"
  LANGUAGES C CXX
)

option(
  KAAKELIT_BUILD_TESTS
  "Enable building tests. Default: ${PROJECT_IS_TOP_LEVEL}."
  ${PROJECT_IS_TOP_LEVEL}
)

add_library(kaakelit)

target_sources(
  kaakelit
  PUBLIC
    FILE_SET HEADERS
      BASE_DIRS
        "${CMAKE_CURRENT_SOURCE_DIR}/include"
)

add_subdirectory(src/kaakelit)

if(KAAKELIT_BUILD_TESTS)
  enable_testing()
  add_subdirectory(tests/kaakelit)
endif()
