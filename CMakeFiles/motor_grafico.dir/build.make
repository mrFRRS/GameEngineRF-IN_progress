# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mrsws/dev/c/projects/motor_grafico

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mrsws/dev/c/projects/motor_grafico

# Include any dependencies generated for this target.
include CMakeFiles/motor_grafico.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/motor_grafico.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/motor_grafico.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/motor_grafico.dir/flags.make

CMakeFiles/motor_grafico.dir/src/main.cpp.o: CMakeFiles/motor_grafico.dir/flags.make
CMakeFiles/motor_grafico.dir/src/main.cpp.o: src/main.cpp
CMakeFiles/motor_grafico.dir/src/main.cpp.o: CMakeFiles/motor_grafico.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mrsws/dev/c/projects/motor_grafico/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/motor_grafico.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/motor_grafico.dir/src/main.cpp.o -MF CMakeFiles/motor_grafico.dir/src/main.cpp.o.d -o CMakeFiles/motor_grafico.dir/src/main.cpp.o -c /home/mrsws/dev/c/projects/motor_grafico/src/main.cpp

CMakeFiles/motor_grafico.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/motor_grafico.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mrsws/dev/c/projects/motor_grafico/src/main.cpp > CMakeFiles/motor_grafico.dir/src/main.cpp.i

CMakeFiles/motor_grafico.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/motor_grafico.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mrsws/dev/c/projects/motor_grafico/src/main.cpp -o CMakeFiles/motor_grafico.dir/src/main.cpp.s

CMakeFiles/motor_grafico.dir/src/core/engine.cpp.o: CMakeFiles/motor_grafico.dir/flags.make
CMakeFiles/motor_grafico.dir/src/core/engine.cpp.o: src/core/engine.cpp
CMakeFiles/motor_grafico.dir/src/core/engine.cpp.o: CMakeFiles/motor_grafico.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mrsws/dev/c/projects/motor_grafico/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/motor_grafico.dir/src/core/engine.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/motor_grafico.dir/src/core/engine.cpp.o -MF CMakeFiles/motor_grafico.dir/src/core/engine.cpp.o.d -o CMakeFiles/motor_grafico.dir/src/core/engine.cpp.o -c /home/mrsws/dev/c/projects/motor_grafico/src/core/engine.cpp

CMakeFiles/motor_grafico.dir/src/core/engine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/motor_grafico.dir/src/core/engine.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mrsws/dev/c/projects/motor_grafico/src/core/engine.cpp > CMakeFiles/motor_grafico.dir/src/core/engine.cpp.i

CMakeFiles/motor_grafico.dir/src/core/engine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/motor_grafico.dir/src/core/engine.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mrsws/dev/c/projects/motor_grafico/src/core/engine.cpp -o CMakeFiles/motor_grafico.dir/src/core/engine.cpp.s

CMakeFiles/motor_grafico.dir/src/widget/header_engine_widget/header_engine_widget.cpp.o: CMakeFiles/motor_grafico.dir/flags.make
CMakeFiles/motor_grafico.dir/src/widget/header_engine_widget/header_engine_widget.cpp.o: src/widget/header_engine_widget/header_engine_widget.cpp
CMakeFiles/motor_grafico.dir/src/widget/header_engine_widget/header_engine_widget.cpp.o: CMakeFiles/motor_grafico.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mrsws/dev/c/projects/motor_grafico/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/motor_grafico.dir/src/widget/header_engine_widget/header_engine_widget.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/motor_grafico.dir/src/widget/header_engine_widget/header_engine_widget.cpp.o -MF CMakeFiles/motor_grafico.dir/src/widget/header_engine_widget/header_engine_widget.cpp.o.d -o CMakeFiles/motor_grafico.dir/src/widget/header_engine_widget/header_engine_widget.cpp.o -c /home/mrsws/dev/c/projects/motor_grafico/src/widget/header_engine_widget/header_engine_widget.cpp

CMakeFiles/motor_grafico.dir/src/widget/header_engine_widget/header_engine_widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/motor_grafico.dir/src/widget/header_engine_widget/header_engine_widget.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mrsws/dev/c/projects/motor_grafico/src/widget/header_engine_widget/header_engine_widget.cpp > CMakeFiles/motor_grafico.dir/src/widget/header_engine_widget/header_engine_widget.cpp.i

CMakeFiles/motor_grafico.dir/src/widget/header_engine_widget/header_engine_widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/motor_grafico.dir/src/widget/header_engine_widget/header_engine_widget.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mrsws/dev/c/projects/motor_grafico/src/widget/header_engine_widget/header_engine_widget.cpp -o CMakeFiles/motor_grafico.dir/src/widget/header_engine_widget/header_engine_widget.cpp.s

CMakeFiles/motor_grafico.dir/src/widget/elements_list_widget/elements_list_widget.cpp.o: CMakeFiles/motor_grafico.dir/flags.make
CMakeFiles/motor_grafico.dir/src/widget/elements_list_widget/elements_list_widget.cpp.o: src/widget/elements_list_widget/elements_list_widget.cpp
CMakeFiles/motor_grafico.dir/src/widget/elements_list_widget/elements_list_widget.cpp.o: CMakeFiles/motor_grafico.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mrsws/dev/c/projects/motor_grafico/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/motor_grafico.dir/src/widget/elements_list_widget/elements_list_widget.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/motor_grafico.dir/src/widget/elements_list_widget/elements_list_widget.cpp.o -MF CMakeFiles/motor_grafico.dir/src/widget/elements_list_widget/elements_list_widget.cpp.o.d -o CMakeFiles/motor_grafico.dir/src/widget/elements_list_widget/elements_list_widget.cpp.o -c /home/mrsws/dev/c/projects/motor_grafico/src/widget/elements_list_widget/elements_list_widget.cpp

CMakeFiles/motor_grafico.dir/src/widget/elements_list_widget/elements_list_widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/motor_grafico.dir/src/widget/elements_list_widget/elements_list_widget.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mrsws/dev/c/projects/motor_grafico/src/widget/elements_list_widget/elements_list_widget.cpp > CMakeFiles/motor_grafico.dir/src/widget/elements_list_widget/elements_list_widget.cpp.i

CMakeFiles/motor_grafico.dir/src/widget/elements_list_widget/elements_list_widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/motor_grafico.dir/src/widget/elements_list_widget/elements_list_widget.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mrsws/dev/c/projects/motor_grafico/src/widget/elements_list_widget/elements_list_widget.cpp -o CMakeFiles/motor_grafico.dir/src/widget/elements_list_widget/elements_list_widget.cpp.s

CMakeFiles/motor_grafico.dir/src/widget/folders_list_widget/folders_list_widget.cpp.o: CMakeFiles/motor_grafico.dir/flags.make
CMakeFiles/motor_grafico.dir/src/widget/folders_list_widget/folders_list_widget.cpp.o: src/widget/folders_list_widget/folders_list_widget.cpp
CMakeFiles/motor_grafico.dir/src/widget/folders_list_widget/folders_list_widget.cpp.o: CMakeFiles/motor_grafico.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mrsws/dev/c/projects/motor_grafico/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/motor_grafico.dir/src/widget/folders_list_widget/folders_list_widget.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/motor_grafico.dir/src/widget/folders_list_widget/folders_list_widget.cpp.o -MF CMakeFiles/motor_grafico.dir/src/widget/folders_list_widget/folders_list_widget.cpp.o.d -o CMakeFiles/motor_grafico.dir/src/widget/folders_list_widget/folders_list_widget.cpp.o -c /home/mrsws/dev/c/projects/motor_grafico/src/widget/folders_list_widget/folders_list_widget.cpp

CMakeFiles/motor_grafico.dir/src/widget/folders_list_widget/folders_list_widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/motor_grafico.dir/src/widget/folders_list_widget/folders_list_widget.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mrsws/dev/c/projects/motor_grafico/src/widget/folders_list_widget/folders_list_widget.cpp > CMakeFiles/motor_grafico.dir/src/widget/folders_list_widget/folders_list_widget.cpp.i

CMakeFiles/motor_grafico.dir/src/widget/folders_list_widget/folders_list_widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/motor_grafico.dir/src/widget/folders_list_widget/folders_list_widget.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mrsws/dev/c/projects/motor_grafico/src/widget/folders_list_widget/folders_list_widget.cpp -o CMakeFiles/motor_grafico.dir/src/widget/folders_list_widget/folders_list_widget.cpp.s

CMakeFiles/motor_grafico.dir/src/widget/info_render_widget/info_render_widget.cpp.o: CMakeFiles/motor_grafico.dir/flags.make
CMakeFiles/motor_grafico.dir/src/widget/info_render_widget/info_render_widget.cpp.o: src/widget/info_render_widget/info_render_widget.cpp
CMakeFiles/motor_grafico.dir/src/widget/info_render_widget/info_render_widget.cpp.o: CMakeFiles/motor_grafico.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mrsws/dev/c/projects/motor_grafico/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/motor_grafico.dir/src/widget/info_render_widget/info_render_widget.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/motor_grafico.dir/src/widget/info_render_widget/info_render_widget.cpp.o -MF CMakeFiles/motor_grafico.dir/src/widget/info_render_widget/info_render_widget.cpp.o.d -o CMakeFiles/motor_grafico.dir/src/widget/info_render_widget/info_render_widget.cpp.o -c /home/mrsws/dev/c/projects/motor_grafico/src/widget/info_render_widget/info_render_widget.cpp

CMakeFiles/motor_grafico.dir/src/widget/info_render_widget/info_render_widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/motor_grafico.dir/src/widget/info_render_widget/info_render_widget.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mrsws/dev/c/projects/motor_grafico/src/widget/info_render_widget/info_render_widget.cpp > CMakeFiles/motor_grafico.dir/src/widget/info_render_widget/info_render_widget.cpp.i

CMakeFiles/motor_grafico.dir/src/widget/info_render_widget/info_render_widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/motor_grafico.dir/src/widget/info_render_widget/info_render_widget.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mrsws/dev/c/projects/motor_grafico/src/widget/info_render_widget/info_render_widget.cpp -o CMakeFiles/motor_grafico.dir/src/widget/info_render_widget/info_render_widget.cpp.s

CMakeFiles/motor_grafico.dir/src/widget/scene_view_widget/scene_view_widget.cpp.o: CMakeFiles/motor_grafico.dir/flags.make
CMakeFiles/motor_grafico.dir/src/widget/scene_view_widget/scene_view_widget.cpp.o: src/widget/scene_view_widget/scene_view_widget.cpp
CMakeFiles/motor_grafico.dir/src/widget/scene_view_widget/scene_view_widget.cpp.o: CMakeFiles/motor_grafico.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mrsws/dev/c/projects/motor_grafico/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/motor_grafico.dir/src/widget/scene_view_widget/scene_view_widget.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/motor_grafico.dir/src/widget/scene_view_widget/scene_view_widget.cpp.o -MF CMakeFiles/motor_grafico.dir/src/widget/scene_view_widget/scene_view_widget.cpp.o.d -o CMakeFiles/motor_grafico.dir/src/widget/scene_view_widget/scene_view_widget.cpp.o -c /home/mrsws/dev/c/projects/motor_grafico/src/widget/scene_view_widget/scene_view_widget.cpp

CMakeFiles/motor_grafico.dir/src/widget/scene_view_widget/scene_view_widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/motor_grafico.dir/src/widget/scene_view_widget/scene_view_widget.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mrsws/dev/c/projects/motor_grafico/src/widget/scene_view_widget/scene_view_widget.cpp > CMakeFiles/motor_grafico.dir/src/widget/scene_view_widget/scene_view_widget.cpp.i

CMakeFiles/motor_grafico.dir/src/widget/scene_view_widget/scene_view_widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/motor_grafico.dir/src/widget/scene_view_widget/scene_view_widget.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mrsws/dev/c/projects/motor_grafico/src/widget/scene_view_widget/scene_view_widget.cpp -o CMakeFiles/motor_grafico.dir/src/widget/scene_view_widget/scene_view_widget.cpp.s

CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.o: CMakeFiles/motor_grafico.dir/flags.make
CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.o: imgui/imgui.cpp
CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.o: CMakeFiles/motor_grafico.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mrsws/dev/c/projects/motor_grafico/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.o -MF CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.o.d -o CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.o -c /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui.cpp

CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui.cpp > CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.i

CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui.cpp -o CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.s

CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/motor_grafico.dir/flags.make
CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.o: imgui/imgui_impl_opengl3.cpp
CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/motor_grafico.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mrsws/dev/c/projects/motor_grafico/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.o -MF CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.o -c /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui_impl_opengl3.cpp

CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui_impl_opengl3.cpp > CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.i

CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui_impl_opengl3.cpp -o CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.s

CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.o: CMakeFiles/motor_grafico.dir/flags.make
CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.o: imgui/imgui_impl_sdl2.cpp
CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.o: CMakeFiles/motor_grafico.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mrsws/dev/c/projects/motor_grafico/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.o -MF CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.o.d -o CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.o -c /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui_impl_sdl2.cpp

CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui_impl_sdl2.cpp > CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.i

CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui_impl_sdl2.cpp -o CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.s

CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.o: CMakeFiles/motor_grafico.dir/flags.make
CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.o: imgui/imgui_widgets.cpp
CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.o: CMakeFiles/motor_grafico.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mrsws/dev/c/projects/motor_grafico/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.o -MF CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.o -c /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui_widgets.cpp

CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui_widgets.cpp > CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.i

CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui_widgets.cpp -o CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.s

CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.o: CMakeFiles/motor_grafico.dir/flags.make
CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.o: imgui/imgui_draw.cpp
CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.o: CMakeFiles/motor_grafico.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mrsws/dev/c/projects/motor_grafico/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.o -MF CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.o.d -o CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.o -c /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui_draw.cpp

CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui_draw.cpp > CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.i

CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui_draw.cpp -o CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.s

CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.o: CMakeFiles/motor_grafico.dir/flags.make
CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.o: imgui/imgui_tables.cpp
CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.o: CMakeFiles/motor_grafico.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mrsws/dev/c/projects/motor_grafico/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.o -MF CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.o.d -o CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.o -c /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui_tables.cpp

CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui_tables.cpp > CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.i

CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mrsws/dev/c/projects/motor_grafico/imgui/imgui_tables.cpp -o CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.s

# Object files for target motor_grafico
motor_grafico_OBJECTS = \
"CMakeFiles/motor_grafico.dir/src/main.cpp.o" \
"CMakeFiles/motor_grafico.dir/src/core/engine.cpp.o" \
"CMakeFiles/motor_grafico.dir/src/widget/header_engine_widget/header_engine_widget.cpp.o" \
"CMakeFiles/motor_grafico.dir/src/widget/elements_list_widget/elements_list_widget.cpp.o" \
"CMakeFiles/motor_grafico.dir/src/widget/folders_list_widget/folders_list_widget.cpp.o" \
"CMakeFiles/motor_grafico.dir/src/widget/info_render_widget/info_render_widget.cpp.o" \
"CMakeFiles/motor_grafico.dir/src/widget/scene_view_widget/scene_view_widget.cpp.o" \
"CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.o" \
"CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.o" \
"CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.o" \
"CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.o" \
"CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.o" \
"CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.o"

# External object files for target motor_grafico
motor_grafico_EXTERNAL_OBJECTS =

motor_grafico: CMakeFiles/motor_grafico.dir/src/main.cpp.o
motor_grafico: CMakeFiles/motor_grafico.dir/src/core/engine.cpp.o
motor_grafico: CMakeFiles/motor_grafico.dir/src/widget/header_engine_widget/header_engine_widget.cpp.o
motor_grafico: CMakeFiles/motor_grafico.dir/src/widget/elements_list_widget/elements_list_widget.cpp.o
motor_grafico: CMakeFiles/motor_grafico.dir/src/widget/folders_list_widget/folders_list_widget.cpp.o
motor_grafico: CMakeFiles/motor_grafico.dir/src/widget/info_render_widget/info_render_widget.cpp.o
motor_grafico: CMakeFiles/motor_grafico.dir/src/widget/scene_view_widget/scene_view_widget.cpp.o
motor_grafico: CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.o
motor_grafico: CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.o
motor_grafico: CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.o
motor_grafico: CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.o
motor_grafico: CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.o
motor_grafico: CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.o
motor_grafico: CMakeFiles/motor_grafico.dir/build.make
motor_grafico: /usr/lib/libSDL2main.a
motor_grafico: /usr/lib/libSDL2-2.0.so.0.3000.0
motor_grafico: /usr/lib/libGL.so
motor_grafico: /usr/lib/libGLU.so
motor_grafico: CMakeFiles/motor_grafico.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/mrsws/dev/c/projects/motor_grafico/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable motor_grafico"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/motor_grafico.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/motor_grafico.dir/build: motor_grafico
.PHONY : CMakeFiles/motor_grafico.dir/build

CMakeFiles/motor_grafico.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/motor_grafico.dir/cmake_clean.cmake
.PHONY : CMakeFiles/motor_grafico.dir/clean

CMakeFiles/motor_grafico.dir/depend:
	cd /home/mrsws/dev/c/projects/motor_grafico && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mrsws/dev/c/projects/motor_grafico /home/mrsws/dev/c/projects/motor_grafico /home/mrsws/dev/c/projects/motor_grafico /home/mrsws/dev/c/projects/motor_grafico /home/mrsws/dev/c/projects/motor_grafico/CMakeFiles/motor_grafico.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/motor_grafico.dir/depend

