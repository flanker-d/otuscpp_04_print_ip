# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /usr/local/cmake-3.9.2/bin/cmake

# The command to remove a file.
RM = /usr/local/cmake-3.9.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/travis/build/flanker-d/otuscpp_04_print_ip

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/travis/build/flanker-d/otuscpp_04_print_ip

# Include any dependencies generated for this target.
include CMakeFiles/printip.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/printip.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/printip.dir/flags.make

CMakeFiles/printip.dir/print_ip.cpp.o: CMakeFiles/printip.dir/flags.make
CMakeFiles/printip.dir/print_ip.cpp.o: print_ip.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/travis/build/flanker-d/otuscpp_04_print_ip/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/printip.dir/print_ip.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/printip.dir/print_ip.cpp.o -c /home/travis/build/flanker-d/otuscpp_04_print_ip/print_ip.cpp

CMakeFiles/printip.dir/print_ip.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/printip.dir/print_ip.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/travis/build/flanker-d/otuscpp_04_print_ip/print_ip.cpp > CMakeFiles/printip.dir/print_ip.cpp.i

CMakeFiles/printip.dir/print_ip.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/printip.dir/print_ip.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/travis/build/flanker-d/otuscpp_04_print_ip/print_ip.cpp -o CMakeFiles/printip.dir/print_ip.cpp.s

CMakeFiles/printip.dir/print_ip.cpp.o.requires:

.PHONY : CMakeFiles/printip.dir/print_ip.cpp.o.requires

CMakeFiles/printip.dir/print_ip.cpp.o.provides: CMakeFiles/printip.dir/print_ip.cpp.o.requires
	$(MAKE) -f CMakeFiles/printip.dir/build.make CMakeFiles/printip.dir/print_ip.cpp.o.provides.build
.PHONY : CMakeFiles/printip.dir/print_ip.cpp.o.provides

CMakeFiles/printip.dir/print_ip.cpp.o.provides.build: CMakeFiles/printip.dir/print_ip.cpp.o


# Object files for target printip
printip_OBJECTS = \
"CMakeFiles/printip.dir/print_ip.cpp.o"

# External object files for target printip
printip_EXTERNAL_OBJECTS =

libprintip.a: CMakeFiles/printip.dir/print_ip.cpp.o
libprintip.a: CMakeFiles/printip.dir/build.make
libprintip.a: CMakeFiles/printip.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/travis/build/flanker-d/otuscpp_04_print_ip/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libprintip.a"
	$(CMAKE_COMMAND) -P CMakeFiles/printip.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/printip.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/printip.dir/build: libprintip.a

.PHONY : CMakeFiles/printip.dir/build

CMakeFiles/printip.dir/requires: CMakeFiles/printip.dir/print_ip.cpp.o.requires

.PHONY : CMakeFiles/printip.dir/requires

CMakeFiles/printip.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/printip.dir/cmake_clean.cmake
.PHONY : CMakeFiles/printip.dir/clean

CMakeFiles/printip.dir/depend:
	cd /home/travis/build/flanker-d/otuscpp_04_print_ip && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/travis/build/flanker-d/otuscpp_04_print_ip /home/travis/build/flanker-d/otuscpp_04_print_ip /home/travis/build/flanker-d/otuscpp_04_print_ip /home/travis/build/flanker-d/otuscpp_04_print_ip /home/travis/build/flanker-d/otuscpp_04_print_ip/CMakeFiles/printip.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/printip.dir/depend
