# Copyright (c) 2016-2019, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_GCC48_PIC_HID_SECTIONS_CXX11_C11_CMAKE_)
  return()
else()
  set(POLLY_GCC48_PIC_HID_SECTIONS_CXX11_C11_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "gcc 4.8 / PIC / c++11 support / hidden / function-sections / data-sections / cxx11 / c11"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("compiler/gcc48.cmake")
include("flags/cxx11.cmake")
include("flags/c11.cmake")
include("flags/fpic.cmake")
include("flags/function-sections.cmake")
include("flags/data-sections.cmake")
include("flags/hidden.cmake")
