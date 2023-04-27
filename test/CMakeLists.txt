set(SUBPROJECT ${PROJECT_NAME}-test)

#############################################
# Unit tests

find_package(GTest)

# enable CTest testing
enable_testing()

# Add a testing executable
add_executable(${SUBPROJECT} unit-tests.cpp)

target_link_libraries(${SUBPROJECT}
    PRIVATE
    ${PROJECT_NAME}-lib
    GTest::GTest 
    GTest::Main
)

add_test(test_all ${SUBPROJECT})
