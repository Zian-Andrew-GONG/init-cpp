#############################################
# static library

set(SOURCE_FILES 
    ${CMAKE_SOURCE_DIR}/src/Hello.cpp)

add_library(${PROJECT_NAME}-lib STATIC ${SOURCE_FILES})

#############################################
# executable

set(SOURCE_FILES main.cpp Hello.cpp)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})

target_link_libraries(${PROJECT_NAME} fmt::fmt spdlog::spdlog)