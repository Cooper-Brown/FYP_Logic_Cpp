# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cooper/FYP_Logic_Cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cooper/FYP_Logic_Cpp/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/v4l2_helper.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/v4l2_helper.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/v4l2_helper.dir/flags.make

lib/CMakeFiles/v4l2_helper.dir/src/v4l2_helper.c.o: lib/CMakeFiles/v4l2_helper.dir/flags.make
lib/CMakeFiles/v4l2_helper.dir/src/v4l2_helper.c.o: ../lib/src/v4l2_helper.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cooper/FYP_Logic_Cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/CMakeFiles/v4l2_helper.dir/src/v4l2_helper.c.o"
	cd /home/cooper/FYP_Logic_Cpp/build/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/v4l2_helper.dir/src/v4l2_helper.c.o   -c /home/cooper/FYP_Logic_Cpp/lib/src/v4l2_helper.c

lib/CMakeFiles/v4l2_helper.dir/src/v4l2_helper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/v4l2_helper.dir/src/v4l2_helper.c.i"
	cd /home/cooper/FYP_Logic_Cpp/build/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/cooper/FYP_Logic_Cpp/lib/src/v4l2_helper.c > CMakeFiles/v4l2_helper.dir/src/v4l2_helper.c.i

lib/CMakeFiles/v4l2_helper.dir/src/v4l2_helper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/v4l2_helper.dir/src/v4l2_helper.c.s"
	cd /home/cooper/FYP_Logic_Cpp/build/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/cooper/FYP_Logic_Cpp/lib/src/v4l2_helper.c -o CMakeFiles/v4l2_helper.dir/src/v4l2_helper.c.s

# Object files for target v4l2_helper
v4l2_helper_OBJECTS = \
"CMakeFiles/v4l2_helper.dir/src/v4l2_helper.c.o"

# External object files for target v4l2_helper
v4l2_helper_EXTERNAL_OBJECTS =

lib/libv4l2_helper.so.0.1.0: lib/CMakeFiles/v4l2_helper.dir/src/v4l2_helper.c.o
lib/libv4l2_helper.so.0.1.0: lib/CMakeFiles/v4l2_helper.dir/build.make
lib/libv4l2_helper.so.0.1.0: lib/CMakeFiles/v4l2_helper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cooper/FYP_Logic_Cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libv4l2_helper.so"
	cd /home/cooper/FYP_Logic_Cpp/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/v4l2_helper.dir/link.txt --verbose=$(VERBOSE)
	cd /home/cooper/FYP_Logic_Cpp/build/lib && $(CMAKE_COMMAND) -E cmake_symlink_library libv4l2_helper.so.0.1.0 libv4l2_helper.so.0.1 libv4l2_helper.so

lib/libv4l2_helper.so.0.1: lib/libv4l2_helper.so.0.1.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libv4l2_helper.so.0.1

lib/libv4l2_helper.so: lib/libv4l2_helper.so.0.1.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libv4l2_helper.so

# Rule to build all files generated by this target.
lib/CMakeFiles/v4l2_helper.dir/build: lib/libv4l2_helper.so

.PHONY : lib/CMakeFiles/v4l2_helper.dir/build

lib/CMakeFiles/v4l2_helper.dir/clean:
	cd /home/cooper/FYP_Logic_Cpp/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/v4l2_helper.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/v4l2_helper.dir/clean

lib/CMakeFiles/v4l2_helper.dir/depend:
	cd /home/cooper/FYP_Logic_Cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cooper/FYP_Logic_Cpp /home/cooper/FYP_Logic_Cpp/lib /home/cooper/FYP_Logic_Cpp/build /home/cooper/FYP_Logic_Cpp/build/lib /home/cooper/FYP_Logic_Cpp/build/lib/CMakeFiles/v4l2_helper.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/v4l2_helper.dir/depend

