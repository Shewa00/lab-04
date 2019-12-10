# Copyright (c) 2017-2018, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_IOS_NOCODESIGN_11_2_DEP_9_3_ARM64_ARMV7_CMAKE_)
  return()
else()
  set(POLLY_IOS_NOCODESIGN_11_2_DEP_9_3_ARM64_ARMV7_CMAKE_ 1)
endif()

include("utilities/polly_clear_environment_variables.cmake")

include("utilities/polly_init.cmake")

set(IOS_SDK_VERSION 11.2)
set(IOS_DEPLOYMENT_SDK_VERSION 9.3)

set(POLLY_XCODE_COMPILER "clang")
polly_init(
    "iOS ${IOS_SDK_VERSION} / Deployment ${IOS_DEPLOYMENT_SDK_VERSION} / Universal (arm64 armv7) / \
${POLLY_XCODE_COMPILER} / \
No code sign / \
c++14 support"
    "Xcode"
)

include("utilities/polly_common.cmake")

include(polly_fatal_error)

# Fix try_compile
include(polly_ios_bundle_identifier)

set(CMAKE_MACOSX_BUNDLE YES)

include("flags/ios_nocodesign.cmake")

set(IPHONEOS_ARCHS armv7;arm64)
set(IPHONESIMULATOR_ARCHS "")

include("compiler/xcode.cmake")
include("os/iphone.cmake")
include("flags/cxx14.cmake")