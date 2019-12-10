# Copyright (c) 2014, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_MSYS_CXX17_CMAKE_)
  return()
else()
  set(POLLY_MSYS_CXX17_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "MSYS / gcc / c++17 support"
    "MSYS Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc.cmake")
include("flags/cxx17.cmake")
