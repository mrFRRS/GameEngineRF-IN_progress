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

${CMAKE_SOURCE_DIR}/src/widget/header_engine_widget/header_engine_widget.cpp
${CMAKE_SOURCE_DIR}/src/widget/elements_list_widget/elements_list_widget.cpp
${CMAKE_SOURCE_DIR}/src/widget/folders_list_widget/folders_list_widget.cpp
${CMAKE_SOURCE_DIR}/src/widget/info_render_widget/info_render_widget.cpp
${CMAKE_SOURCE_DIR}/src/widget/scene_view_widget/scene_view_widget.cpp

)

# Configura el proyecto principal
add_executable(
    motor_grafico 
    src/main.cpp
    src/core/engine.cpp
    src/widget/header_engine_widget/header_engine_widget.cpp
    src/widget/elements_list_widget/elements_list_widget.cpp
    src/widget/folders_list_widget/folders_list_widget.cpp
    src/widget/info_render_widget/info_render_widget.cpp
    src/widget/scene_view_widget/scene_view_widget.cpp
    ${IMGUI_SOURCES}
)

# Incluye los directorios necesarios
target_include_directories(motor_grafico PRIVATE 
    ${CMAKE_SOURCE_DIR}/imgui  
    ${CMAKE_SOURCE_DIR}/src/widget
    ${CMAKE_SOURCE_DIR}/src/core
)

find_package(OpenGL REQUIRED)

target_link_libraries(motor_grafico PRIVATE 
    ${SDL2_LIBRARIES}
    ${OPENGL_LIBRARIES}
)
