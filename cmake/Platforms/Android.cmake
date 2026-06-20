# Android Platform Toolchain Bindings for Hatch Engine
set(PLATFORM_LIBS log android GLESv2 EGL)
add_definitions(-D__ANDROID__)
add_definitions(-DDEFAULT_TARGET_NAME="HatchEngine")

# Search and bind SDL2 Android specific implementation layers
find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})
list(APPEND PLATFORM_LIBS ${SDL2_LIBRARIES})
