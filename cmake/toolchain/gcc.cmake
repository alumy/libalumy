cmake_minimum_required(VERSION 2.8)

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR x86_64)
set(CMAKE_C_COMPILER "gcc")
set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_FIND_ROOT_PATH "...")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(CMAKE_C_FLAGS "-std=gnu99 -Wall -Werror -fPIC" CACHE STRING "" FORCE)
set(CMAKE_C_FLAGS_DEBUG "-g -fprofile-arcs -ftest-coverage" CACHE STRING "" FORCE)
set(CMAKE_C_FLAGS_MINSIZEREL "-Os -DNDEBUG" CACHE STRING "" FORCE)
set(CMAKE_C_FLAGS_RELEASE "-O2 -DNDEBUG" CACHE STRING "" FORCE)
set(CMAKE_C_FLAGS_RELWITHDEBINFO "-O2 -g" CACHE STRING "" FORCE)

set(CMAKE_CXX_FLAGS              "-Wall" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS_DEBUG          "-g" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS_MINSIZEREL     "-Os -DNDEBUG" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS_RELEASE        "-O2 -DNDEBUG" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O2 -g" CACHE STRING "" FORCE)

# Let empty for root directory /
set(ROOTFS_DIR ${PROJECT_SOURCE_DIR}/../rootfs/x86_64/amd64 CACHE STRING "" FORCE)
set(CMAKE_INSTALL_PREFIX "${ROOTFS_DIR}/usr/local" CACHE STRING "" FORCE)

