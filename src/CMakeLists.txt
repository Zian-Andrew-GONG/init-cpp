#############################################
# static library

set(SOURCE_FILES 
    ${CMAKE_SOURCE_DIR}/src/Hello.cpp)

#Generate the static library from the library sources
add_library(${PROJECT_NAME}-lib STATIC ${SOURCE_FILES})

# Set the directories that should be included in the build command for this target
# when running g++ these will be included as -I/directory/path/
target_include_directories(${PROJECT_NAME}-lib PRIVATE ${CMAKE_SOURCE_DIR}/src/include)

#############################################
# executable

# Create a sources variable with a link to all cpp files to compile
set(SOURCE_FILES main.cpp Hello.cpp)

# Add an executable with the above sources
add_executable(${PROJECT_NAME} ${SOURCE_FILES})

# Set the directories that should be included in the build command for this target
# when running g++ these will be included as -I/directory/path/
target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/src/include)