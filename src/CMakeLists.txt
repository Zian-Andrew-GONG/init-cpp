#############################################
# executable

set(SOURCE_FILES main.cpp Hello.cpp)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})

target_include_directories(${PROJECT_NAME} PRIVATE include)

target_link_libraries(${PROJECT_NAME} ${PROJECT_NAME}-lib fmt::fmt spdlog::spdlog)