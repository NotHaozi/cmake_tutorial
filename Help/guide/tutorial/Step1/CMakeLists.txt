cmake_minimum_required(VERSION 3.10)

# set the project name
project(Tutorial)

# set version
set(Tutorial_VERSION_MAJOR 1)
set(Tutorial_VERSION_MINOR 2)

configure_file(TutorialConfig.h.in TutorialConfig.h)

# set cxx_std_11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# add the executable
add_executable(Tutorial tutorial.cxx)

# 添加构建目录
target_include_directories(Tutorial PUBLIC "${PROJECT_BINARY_DIR}")



