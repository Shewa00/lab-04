# Copyright (c) 2017-2018, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_IOS_12_1_DEP_12_0_ARM64_CXX17_CMAKE_)
  return()
else()
  set(POLLY_IOS_12_1_DEP_12_0_ARM64_CXX17_CMAKE_ 1)
endif()

include("utilities/polly_clear_environment_variables.cmake")

include("utilities/polly_init.cmake")

set(IOS_SDK_VERSION 12.1)
set(IOS_DEPLOYMENT_SDK_VERSION 12.0)

set(POLLY_XCODE_COMPILER "clang")
polly_init(
    "iOS ${IOS_SDK_VERSION} / Deployment ${IOS_DEPLOYMENT_SDK_VERSION} / Universal (arm64) / \
${POLLY_XCODE_COMPILER} / \
c++17 support"
    "Xcode"
)

include("utilities/polly_common.cmake")

include(polly_fatal_error)

# Fix try_compile
include(polly_ios_bundle_identifier)

set(CMAKE_MACOSX_BUNDLE YES)
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer")

set(IPHONEOS_ARCHS arm64)
set(IPHONESIMULATOR_ARCHS "")

include("compiler/xcode.cmake")
include("os/iphone.cmake")
include("flags/cxx17.cmake")

include("utilities/polly_ios_development_team.cmake")
