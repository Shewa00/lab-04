# Copyright (c) 2014, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_VS_12_2013_ARM_CMAKE_)
  return()
else()
  set(POLLY_VS_12_2013_ARM_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

polly_init(
    "Visual Studio 12 2013 ARM"
    "Visual Studio 12 2013 ARM"
)

include("utilities/polly_common.cmake")
