#Standalone unit tests definition

cmake_minimum_required(VERSION 3.10)
project(dolphin-memory-analyzerTests)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

#dependencies
include(CTest)

#needed to have access to our own project headers
include_directories(..)

#find_package(GTest MODULE REQUIRED)

#here, we only want to find package if we run the standalone tests.
#if we are being run from top level, we already know about dolphin-memory-analyzer package
#and we wont enter in the if branch.

#if(NOT TARGET geranim0::dolphin-memory-analyzer)
#    find_package(dolphin-memory-analyzer CONFIG REQUIRED)
#endif()
#
##target definition
#add_executable(dolphin-memory-analyzerTests tests.cpp)
#target_link_libraries(dolphin-memory-analyzerTest
#    PRIVATE
#        geranim0::dolphin-memory-analyzer
#        GTest::Main
#)
#
#add_test(NAME dolphin-memory-analyzer.UnitTests
#    COMMAND dolphin-memory-analyzerTests
#)


#testing testing
#enable_testing()

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(
    dolphin-memory-analyzerTests
    main.test.cpp
)

TARGET_LINK_LIBRARIES(${PROJECT_NAME} ${CONAN_LIBS})

include(GoogleTest)
gtest_discover_tests(dolphin-memory-analyzerTests)