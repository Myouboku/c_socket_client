# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /home/hugo/.local/lib/python3.10/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/hugo/.local/lib/python3.10/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hugo/dev/C/socket_client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hugo/dev/C/socket_client/build

# Include any dependencies generated for this target.
include CMakeFiles/socket_client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/socket_client.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/socket_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/socket_client.dir/flags.make

CMakeFiles/socket_client.dir/main.c.o: CMakeFiles/socket_client.dir/flags.make
CMakeFiles/socket_client.dir/main.c.o: /home/hugo/dev/C/socket_client/main.c
CMakeFiles/socket_client.dir/main.c.o: CMakeFiles/socket_client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hugo/dev/C/socket_client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/socket_client.dir/main.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/socket_client.dir/main.c.o -MF CMakeFiles/socket_client.dir/main.c.o.d -o CMakeFiles/socket_client.dir/main.c.o -c /home/hugo/dev/C/socket_client/main.c

CMakeFiles/socket_client.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/socket_client.dir/main.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hugo/dev/C/socket_client/main.c > CMakeFiles/socket_client.dir/main.c.i

CMakeFiles/socket_client.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/socket_client.dir/main.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hugo/dev/C/socket_client/main.c -o CMakeFiles/socket_client.dir/main.c.s

# Object files for target socket_client
socket_client_OBJECTS = \
"CMakeFiles/socket_client.dir/main.c.o"

# External object files for target socket_client
socket_client_EXTERNAL_OBJECTS =

socket_client: CMakeFiles/socket_client.dir/main.c.o
socket_client: CMakeFiles/socket_client.dir/build.make
socket_client: CMakeFiles/socket_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hugo/dev/C/socket_client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable socket_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/socket_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/socket_client.dir/build: socket_client
.PHONY : CMakeFiles/socket_client.dir/build

CMakeFiles/socket_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/socket_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/socket_client.dir/clean

CMakeFiles/socket_client.dir/depend:
	cd /home/hugo/dev/C/socket_client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hugo/dev/C/socket_client /home/hugo/dev/C/socket_client /home/hugo/dev/C/socket_client/build /home/hugo/dev/C/socket_client/build /home/hugo/dev/C/socket_client/build/CMakeFiles/socket_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/socket_client.dir/depend
