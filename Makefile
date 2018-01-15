# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target package
package: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool..."
	/usr/local/cmake-3.9.2/bin/cpack --config ./CPackConfig.cmake
.PHONY : package

# Special rule for the target package
package/fast: package

.PHONY : package/fast

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/usr/local/cmake-3.9.2/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test

.PHONY : test/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/local/cmake-3.9.2/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/local/cmake-3.9.2/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/cmake-3.9.2/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target package_source
package_source:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool for source..."
	/usr/local/cmake-3.9.2/bin/cpack --config ./CPackSourceConfig.cmake /home/travis/build/flanker-d/otuscpp_04_print_ip/CPackSourceConfig.cmake
.PHONY : package_source

# Special rule for the target package_source
package_source/fast: package_source

.PHONY : package_source/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/cmake-3.9.2/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/local/cmake-3.9.2/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/local/cmake-3.9.2/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components

.PHONY : list_install_components/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/cmake-3.9.2/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/cmake-3.9.2/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/travis/build/flanker-d/otuscpp_04_print_ip/CMakeFiles /home/travis/build/flanker-d/otuscpp_04_print_ip/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/travis/build/flanker-d/otuscpp_04_print_ip/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named printip

# Build rule for target.
printip: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 printip
.PHONY : printip

# fast build rule for target.
printip/fast:
	$(MAKE) -f CMakeFiles/printip.dir/build.make CMakeFiles/printip.dir/build
.PHONY : printip/fast

#=============================================================================
# Target rules for targets named print_ip

# Build rule for target.
print_ip: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 print_ip
.PHONY : print_ip

# fast build rule for target.
print_ip/fast:
	$(MAKE) -f CMakeFiles/print_ip.dir/build.make CMakeFiles/print_ip.dir/build
.PHONY : print_ip/fast

#=============================================================================
# Target rules for targets named funcs_tests

# Build rule for target.
funcs_tests: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 funcs_tests
.PHONY : funcs_tests

# fast build rule for target.
funcs_tests/fast:
	$(MAKE) -f CMakeFiles/funcs_tests.dir/build.make CMakeFiles/funcs_tests.dir/build
.PHONY : funcs_tests/fast

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/print_ip.dir/build.make CMakeFiles/print_ip.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/print_ip.dir/build.make CMakeFiles/print_ip.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/print_ip.dir/build.make CMakeFiles/print_ip.dir/main.cpp.s
.PHONY : main.cpp.s

print_ip.o: print_ip.cpp.o

.PHONY : print_ip.o

# target to build an object file
print_ip.cpp.o:
	$(MAKE) -f CMakeFiles/printip.dir/build.make CMakeFiles/printip.dir/print_ip.cpp.o
.PHONY : print_ip.cpp.o

print_ip.i: print_ip.cpp.i

.PHONY : print_ip.i

# target to preprocess a source file
print_ip.cpp.i:
	$(MAKE) -f CMakeFiles/printip.dir/build.make CMakeFiles/printip.dir/print_ip.cpp.i
.PHONY : print_ip.cpp.i

print_ip.s: print_ip.cpp.s

.PHONY : print_ip.s

# target to generate assembly for a file
print_ip.cpp.s:
	$(MAKE) -f CMakeFiles/printip.dir/build.make CMakeFiles/printip.dir/print_ip.cpp.s
.PHONY : print_ip.cpp.s

tests.o: tests.cpp.o

.PHONY : tests.o

# target to build an object file
tests.cpp.o:
	$(MAKE) -f CMakeFiles/funcs_tests.dir/build.make CMakeFiles/funcs_tests.dir/tests.cpp.o
.PHONY : tests.cpp.o

tests.i: tests.cpp.i

.PHONY : tests.i

# target to preprocess a source file
tests.cpp.i:
	$(MAKE) -f CMakeFiles/funcs_tests.dir/build.make CMakeFiles/funcs_tests.dir/tests.cpp.i
.PHONY : tests.cpp.i

tests.s: tests.cpp.s

.PHONY : tests.s

# target to generate assembly for a file
tests.cpp.s:
	$(MAKE) -f CMakeFiles/funcs_tests.dir/build.make CMakeFiles/funcs_tests.dir/tests.cpp.s
.PHONY : tests.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... package"
	@echo "... test"
	@echo "... install/local"
	@echo "... printip"
	@echo "... print_ip"
	@echo "... edit_cache"
	@echo "... package_source"
	@echo "... rebuild_cache"
	@echo "... install/strip"
	@echo "... funcs_tests"
	@echo "... list_install_components"
	@echo "... install"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... print_ip.o"
	@echo "... print_ip.i"
	@echo "... print_ip.s"
	@echo "... tests.o"
	@echo "... tests.i"
	@echo "... tests.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
