# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_IOS_10_3_CMAKE_)
  return()
else()
  set(POLLY_IOS_10_3_CMAKE_ 1)
endif()

include("utilities/polly_clear_environment_variables.cmake")

include("utilities/polly_init.cmake")

set(IOS_SDK_VERSION 10.3)
set(POLLY_XCODE_COMPILER "clang")
polly_init(
    "iOS ${IOS_SDK_VERSION} Universal (iphoneos + iphonesimulator) / \
${POLLY_XCODE_COMPILER} / \
c++11 support"
    "Xcode"
)

include("utilities/polly_common.cmake")

include(polly_fatal_error)

# Fix try_compile
include(polly_ios_bundle_identifier)

set(CMAKE_MACOSX_BUNDLE YES)
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer")

set(IPHONEOS_ARCHS armv7;armv7s;arm64)
set(IPHONESIMULATOR_ARCHS i386;x86_64)

include("compiler/xcode.cmake")
include("os/iphone.cmake")
include("flags/cxx11.cmake")

include("utilities/polly_ios_development_team.cmake")
