cmake_minimum_required(VERSION 3.5)

set(CMAKE_CXX_STANDARD 14)

project(init-cpp)

find_package(fmt)
find_package(spdlog)

include_directories(include)

add_subdirectory(module)
add_subdirectory(src)
add_subdirectory(test)
add_subdirectory(examples)
