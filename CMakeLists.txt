cmake_minimum_required(VERSION 3.10)
project(motor_grafico)

# Encuentra y configura SDL2
find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})

# Agrega las fuentes de ImGui a tu proyecto
set(IMGUI_SOURCES
${CMAKE_SOURCE_DIR}/imgui/imgui.cpp
${CMAKE_SOURCE_DIR}/imgui/imgui_impl_opengl3.cpp
${CMAKE_SOURCE_DIR}/imgui/imgui_impl_sdl2.cpp
${CMAKE_SOURCE_DIR}/imgui/imgui_widgets.cpp
${CMAKE_SOURCE_DIR}/imgui/imgui_draw.cpp
${CMAKE_SOURCE_DIR}/imgui/imgui_tables.cpp
)

# Configura el proyecto principal
add_executable(
    motor_grafico 
    src/main.cpp
    src/core/engine.cpp
    src/widgets/hello_world_button.cpp
    ${IMGUI_SOURCES}
)

# Incluye los directorios necesarios
target_include_directories(motor_grafico PRIVATE 
    ${CMAKE_SOURCE_DIR}/imgui  
)

find_package(OpenGL REQUIRED)

target_link_libraries(motor_grafico PRIVATE 
    ${SDL2_LIBRARIES}
    ${OPENGL_LIBRARIES}
)
