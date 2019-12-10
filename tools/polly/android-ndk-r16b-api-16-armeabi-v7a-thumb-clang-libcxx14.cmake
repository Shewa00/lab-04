# Copyright (c) 2015-2018, Ruslan Baratov
# Copyright (c) 2017-2018, Robert Nitsch
# Copyright (c) 2018, David Hirvonen
# All rights reserved.

if(DEFINED POLLY_ANDROID_NDK_R16B_API_16_ARMEABI_V7A_THUMB_CLANG_LIBCXX14_CMAKE_)
  return()
else()
  set(POLLY_ANDROID_NDK_R16B_API_16_ARMEABI_V7A_THUMB_CLANG_LIBCXX14_CMAKE_ 1)
endif()

include("utilities/polly_clear_environment_variables.cmake")

include("utilities/polly_init.cmake")

set(ANDROID_NDK_VERSION "r16b")
set(CMAKE_SYSTEM_VERSION "16")
set(CMAKE_ANDROID_ARCH_ABI "armeabi-v7a")
set(CMAKE_ANDROID_ARM_NEON FALSE)
set(CMAKE_ANDROID_ARM_MODE FALSE) # 16-bit Thumb
set(CMAKE_ANDROID_NDK_TOOLCHAIN_VERSION "clang")
set(CMAKE_ANDROID_STL_TYPE "c++_static") # LLVM libc++ static

polly_init(
    "Android NDK ${ANDROID_NDK_VERSION} / \
API ${CMAKE_SYSTEM_VERSION} / ${CMAKE_ANDROID_ARCH_ABI} / \
16-bit Thumb / Clang / c++14 support / libc++ static"
    "Unix Makefiles"
)

include("utilities/polly_common.cmake")

include("flags/cxx14.cmake") # before toolchain!

include("os/android.cmake")
