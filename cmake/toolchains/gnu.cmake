# Copyright 2026 Oatbelly <oatbelly@tutamail.com>
# SPDX-License-Identifier: Apache-2.0

set(CMAKE_C_COMPILER gcc)
set(CMAKE_CXX_COMPILER g++)

set(WARNING_FLAGS "-Wall -Wextra -Werror")
set(SANITIZER_FLAGS "-fsanitize=address,undefined")

set(CMAKE_C_FLAGS_INIT "${WARNING_FLAGS}")
set(CMAKE_CXX_FLAGS_INIT "${WARNING_FLAGS}")

if(KAAKELIT_USE_SANITIZERS)
  set(CMAKE_C_FLAGS_DEBUG_INIT "${SANITIZER_FLAGS}")
  set(CMAKE_CXX_FLAGS_DEBUG_INIT "${SANITIZER_FLAGS}")
endif()
