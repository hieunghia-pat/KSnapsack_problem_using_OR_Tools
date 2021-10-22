cmake_minimum_required(VERSION 3.0)

set(PROJECT_NAME KnapsackProblem)
set(CXX_STANDARD 2x)
set(CXX_STANDARD_REQUIRED True)
set(SOURCES main.cpp)

project(${PROJECT_NAME})

find_package(ortools CONFIG REQUIRED)

add_executable(main ${SOURCES})
target_link_libraries(main ortools::ortools)