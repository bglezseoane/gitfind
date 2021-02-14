cmake_minimum_required(VERSION 3.17)
set(CMAKE_CXX_STANDARD 14)

project(gitfind)

add_executable(gitfind main.cpp)
target_link_libraries(gitfind ${Boost_LIBRARIES} )
