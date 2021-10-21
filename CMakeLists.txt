cmake_minimum_required(VERSION 3.8)
project("project")

set(BIN_NAME triangle)
set(LIB_NAME triangleLib)

file(
    GLOB SRC_FILES
    main.cpp
)

file(
    GLOB LIB_FILES
    triangle.cpp
    triangle.h
)

add_executable(${BIN_NAME} ${SRC_FILES})
add_library(${LIB_NAME} STATIC ${LIB_FILES})
target_link_libraries(${BIN_NAME} ${LIB_NAME})