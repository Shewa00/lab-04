# Copyright (c) 2014, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_SANITIZE_LEAK_CMAKE_)
  return()
else()
  set(POLLY_SANITIZE_LEAK_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Clang memory leaks sanitizer / c++11 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/clang.cmake")
include("flags/cxx11.cmake")

include("flags/sanitize_leak.cmake")
