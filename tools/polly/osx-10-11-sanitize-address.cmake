# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_OSX_10_11_SANITIZE_ADDRESS_CMAKE_)
  return()
else()
  set(POLLY_OSX_10_11_SANITIZE_ADDRESS_CMAKE_ 1)
endif()

include("utilities/polly_init.cmake")

set(OSX_SDK_VERSION "10.11")
set(POLLY_XCODE_COMPILER "clang")
polly_init(
    "Xcode (OS X ${OSX_SDK_VERSION}) / \
${POLLY_XCODE_COMPILER} / \
LLVM Standard C++ Library (libc++) / Clang address sanitizer / c++11 support"
    "Xcode"
)

include("utilities/polly_common.cmake")

include("compiler/xcode.cmake")

set(CMAKE_OSX_DEPLOYMENT_TARGET "10.11" CACHE STRING "OS X Deployment target" FORCE)

include("library/std/libcxx.cmake")
include("flags/cxx11.cmake")
include("os/osx.cmake")
include("flags/sanitize_address.cmake")
