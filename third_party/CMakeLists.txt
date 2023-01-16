cmake_minimum_required(VERSION 3.22.1)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")
# SDL 3
# set(SDL3_DIR ${CMAKE_CURRENT_SOURCE_DIR}/SDL)
# add_subdirectory(${SDL3_DIR})

# ImGui
set(IMGUI_DIR ${CMAKE_CURRENT_SOURCE_DIR}/imgui)
add_library(IMGUI STATIC)

target_sources(
    IMGUI
    PRIVATE
        ${IMGUI_DIR}/imgui_demo.cpp
        ${IMGUI_DIR}/imgui_draw.cpp
        ${IMGUI_DIR}/imgui_tables.cpp 
        ${IMGUI_DIR}/imgui_widgets.cpp
        ${IMGUI_DIR}/imgui.cpp
    PRIVATE
        ${IMGUI_DIR}/backends/imgui_impl_opengl3.cpp
        ${IMGUI_DIR}/backends/imgui_impl_sdl.cpp
)

target_include_directories(
    IMGUI
    PUBLIC ${IMGUI_DIR}
    PUBLIC ${IMGUI_DIR}/backends
)

target_compile_features(IMGUI PRIVATE cxx_std_17)

find_package(OpenGL REQUIRED)
find_package(SDL2 REQUIRED)

target_link_libraries(IMGUI PUBLIC ${OPENGL_LIBRARIES})
target_link_libraries(IMGUI PUBLIC ${SDL2_LIBRARIES})