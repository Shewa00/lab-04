# Copyright (c) 2013-2015, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_IOS_8_2_I386_ARM64_CMAKE_)
  return()
else()
  set(POLLY_IOS_8_2_I386_ARM64_CMAKE_ 1)
endif()

include("utilities/polly_clear_environment_variables.cmake")

include("utilities/polly_init.cmake")

set(IOS_SDK_VERSION 8.2)
set(POLLY_XCODE_COMPILER "clang")
polly_init(
    "iOS ${IOS_SDK_VERSION} Universal (iphoneos + iphonesimulator) / \
${POLLY_XCODE_COMPILER} / \
i386 / arm64 / \
c++11 support"
    "Xcode"
)

include("utilities/polly_common.cmake")

include(polly_fatal_error)

# Fix try_compile
include(polly_ios_bundle_identifier)
set(CMAKE_MACOSX_BUNDLE YES)
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer")

set(IPHONEOS_ARCHS arm64)
set(IPHONESIMULATOR_ARCHS i386)

include("compiler/xcode.cmake")
include("os/iphone.cmake")
include("flags/cxx11.cmake")
