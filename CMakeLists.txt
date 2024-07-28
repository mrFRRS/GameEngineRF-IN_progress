cmake_minimum_required(VERSION 3.10)
project(motor_grafico)

# Encuentra y configura SDL2
find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})

# Encuentra y configura GTKMM
find_package(PkgConfig REQUIRED)
pkg_check_modules(GTKMM REQUIRED gtkmm-4.0)
include_directories(${GTKMM_INCLUDE_DIRS})



# Configura el proyecto principal
add_executable(
    motor_grafico 
    src/main.cpp
    src/editor/ui/principal_page/principal_page.cpp
    src/editor/ui/project_page/create_project.cpp
)

# Incluye los directorios necesarios
target_include_directories(motor_grafico PRIVATE 
    ${CMAKE_SOURCE_DIR}/src/
    ${GTKMM_INCLUDE_DIRS}
)

find_package(OpenGL REQUIRED)

target_link_libraries(motor_grafico PRIVATE 
    ${SDL2_LIBRARIES}
    ${OPENGL_LIBRARIES}
    ${GTKMM_LIBRARIES}
)


