# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_ANDROID_NDK_R10E_API_21_ARM64_V8A_CMAKE_)
  return()
else()
  set(POLLY_ANDROID_NDK_R10E_API_21_ARM64_V8A_CMAKE_ 1)
endif()

include("utilities/polly_clear_environment_variables.cmake")

include("utilities/polly_init.cmake")

set(ANDROID_NDK_VERSION "r10e")
set(CMAKE_SYSTEM_VERSION "21")
set(CMAKE_ANDROID_ARCH_ABI "arm64-v8a")

polly_init(
    "Android NDK ${ANDROID_NDK_VERSION} / \
API ${CMAKE_SYSTEM_VERSION} / ${CMAKE_ANDROID_ARCH_ABI} / \
c++11 support"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("flags/cxx11.cmake") # before toolchain!

include("os/android.cmake")
