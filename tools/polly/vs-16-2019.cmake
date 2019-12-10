# Copyright (c) 2015-2017, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_VS_16_2019_CMAKE_)
  return()
else()
  set(POLLY_VS_16_2019_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Visual Studio 16 2019"
    "Visual Studio 16 2019"
)

include("utilities/polly_common.cmake")

include("flags/vs-platform-win32.cmake")
