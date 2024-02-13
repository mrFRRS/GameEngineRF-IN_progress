# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/mrsws/dev/c/projects/motor_grafico/CMakeFiles /home/mrsws/dev/c/projects/motor_grafico//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/mrsws/dev/c/projects/motor_grafico/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named motor_grafico

# Build rule for target.
motor_grafico: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 motor_grafico
.PHONY : motor_grafico

# fast build rule for target.
motor_grafico/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/build
.PHONY : motor_grafico/fast

imgui/imgui.o: imgui/imgui.cpp.o
.PHONY : imgui/imgui.o

# target to build an object file
imgui/imgui.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.o
.PHONY : imgui/imgui.cpp.o

imgui/imgui.i: imgui/imgui.cpp.i
.PHONY : imgui/imgui.i

# target to preprocess a source file
imgui/imgui.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.i
.PHONY : imgui/imgui.cpp.i

imgui/imgui.s: imgui/imgui.cpp.s
.PHONY : imgui/imgui.s

# target to generate assembly for a file
imgui/imgui.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui.cpp.s
.PHONY : imgui/imgui.cpp.s

imgui/imgui_draw.o: imgui/imgui_draw.cpp.o
.PHONY : imgui/imgui_draw.o

# target to build an object file
imgui/imgui_draw.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.o
.PHONY : imgui/imgui_draw.cpp.o

imgui/imgui_draw.i: imgui/imgui_draw.cpp.i
.PHONY : imgui/imgui_draw.i

# target to preprocess a source file
imgui/imgui_draw.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.i
.PHONY : imgui/imgui_draw.cpp.i

imgui/imgui_draw.s: imgui/imgui_draw.cpp.s
.PHONY : imgui/imgui_draw.s

# target to generate assembly for a file
imgui/imgui_draw.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui_draw.cpp.s
.PHONY : imgui/imgui_draw.cpp.s

imgui/imgui_impl_opengl3.o: imgui/imgui_impl_opengl3.cpp.o
.PHONY : imgui/imgui_impl_opengl3.o

# target to build an object file
imgui/imgui_impl_opengl3.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.o
.PHONY : imgui/imgui_impl_opengl3.cpp.o

imgui/imgui_impl_opengl3.i: imgui/imgui_impl_opengl3.cpp.i
.PHONY : imgui/imgui_impl_opengl3.i

# target to preprocess a source file
imgui/imgui_impl_opengl3.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.i
.PHONY : imgui/imgui_impl_opengl3.cpp.i

imgui/imgui_impl_opengl3.s: imgui/imgui_impl_opengl3.cpp.s
.PHONY : imgui/imgui_impl_opengl3.s

# target to generate assembly for a file
imgui/imgui_impl_opengl3.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui_impl_opengl3.cpp.s
.PHONY : imgui/imgui_impl_opengl3.cpp.s

imgui/imgui_impl_sdl2.o: imgui/imgui_impl_sdl2.cpp.o
.PHONY : imgui/imgui_impl_sdl2.o

# target to build an object file
imgui/imgui_impl_sdl2.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.o
.PHONY : imgui/imgui_impl_sdl2.cpp.o

imgui/imgui_impl_sdl2.i: imgui/imgui_impl_sdl2.cpp.i
.PHONY : imgui/imgui_impl_sdl2.i

# target to preprocess a source file
imgui/imgui_impl_sdl2.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.i
.PHONY : imgui/imgui_impl_sdl2.cpp.i

imgui/imgui_impl_sdl2.s: imgui/imgui_impl_sdl2.cpp.s
.PHONY : imgui/imgui_impl_sdl2.s

# target to generate assembly for a file
imgui/imgui_impl_sdl2.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui_impl_sdl2.cpp.s
.PHONY : imgui/imgui_impl_sdl2.cpp.s

imgui/imgui_tables.o: imgui/imgui_tables.cpp.o
.PHONY : imgui/imgui_tables.o

# target to build an object file
imgui/imgui_tables.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.o
.PHONY : imgui/imgui_tables.cpp.o

imgui/imgui_tables.i: imgui/imgui_tables.cpp.i
.PHONY : imgui/imgui_tables.i

# target to preprocess a source file
imgui/imgui_tables.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.i
.PHONY : imgui/imgui_tables.cpp.i

imgui/imgui_tables.s: imgui/imgui_tables.cpp.s
.PHONY : imgui/imgui_tables.s

# target to generate assembly for a file
imgui/imgui_tables.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui_tables.cpp.s
.PHONY : imgui/imgui_tables.cpp.s

imgui/imgui_widgets.o: imgui/imgui_widgets.cpp.o
.PHONY : imgui/imgui_widgets.o

# target to build an object file
imgui/imgui_widgets.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.o
.PHONY : imgui/imgui_widgets.cpp.o

imgui/imgui_widgets.i: imgui/imgui_widgets.cpp.i
.PHONY : imgui/imgui_widgets.i

# target to preprocess a source file
imgui/imgui_widgets.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.i
.PHONY : imgui/imgui_widgets.cpp.i

imgui/imgui_widgets.s: imgui/imgui_widgets.cpp.s
.PHONY : imgui/imgui_widgets.s

# target to generate assembly for a file
imgui/imgui_widgets.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/imgui/imgui_widgets.cpp.s
.PHONY : imgui/imgui_widgets.cpp.s

src/core/engine.o: src/core/engine.cpp.o
.PHONY : src/core/engine.o

# target to build an object file
src/core/engine.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/src/core/engine.cpp.o
.PHONY : src/core/engine.cpp.o

src/core/engine.i: src/core/engine.cpp.i
.PHONY : src/core/engine.i

# target to preprocess a source file
src/core/engine.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/src/core/engine.cpp.i
.PHONY : src/core/engine.cpp.i

src/core/engine.s: src/core/engine.cpp.s
.PHONY : src/core/engine.s

# target to generate assembly for a file
src/core/engine.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/src/core/engine.cpp.s
.PHONY : src/core/engine.cpp.s

src/main.o: src/main.cpp.o
.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/motor_grafico.dir/build.make CMakeFiles/motor_grafico.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... motor_grafico"
	@echo "... imgui/imgui.o"
	@echo "... imgui/imgui.i"
	@echo "... imgui/imgui.s"
	@echo "... imgui/imgui_draw.o"
	@echo "... imgui/imgui_draw.i"
	@echo "... imgui/imgui_draw.s"
	@echo "... imgui/imgui_impl_opengl3.o"
	@echo "... imgui/imgui_impl_opengl3.i"
	@echo "... imgui/imgui_impl_opengl3.s"
	@echo "... imgui/imgui_impl_sdl2.o"
	@echo "... imgui/imgui_impl_sdl2.i"
	@echo "... imgui/imgui_impl_sdl2.s"
	@echo "... imgui/imgui_tables.o"
	@echo "... imgui/imgui_tables.i"
	@echo "... imgui/imgui_tables.s"
	@echo "... imgui/imgui_widgets.o"
	@echo "... imgui/imgui_widgets.i"
	@echo "... imgui/imgui_widgets.s"
	@echo "... src/core/engine.o"
	@echo "... src/core/engine.i"
	@echo "... src/core/engine.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

