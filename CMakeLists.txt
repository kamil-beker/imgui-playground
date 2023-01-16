cmake_minimum_required(VERSION 3.22.1)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")
project(imgui_playground)

add_subdirectory(third_party)

add_executable(${PROJECT_NAME}.out main.cpp)
target_link_libraries(${PROJECT_NAME}.out IMGUI)
target_compile_features(${PROJECT_NAME}.out PRIVATE cxx_std_17)
