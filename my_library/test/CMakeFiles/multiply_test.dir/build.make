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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tanmayvijay/cmake_cpp_template

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tanmayvijay/cmake_cpp_template

# Include any dependencies generated for this target.
include my_library/test/CMakeFiles/multiply_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include my_library/test/CMakeFiles/multiply_test.dir/compiler_depend.make

# Include the progress variables for this target.
include my_library/test/CMakeFiles/multiply_test.dir/progress.make

# Include the compile flags for this target's objects.
include my_library/test/CMakeFiles/multiply_test.dir/flags.make

my_library/test/CMakeFiles/multiply_test.dir/multiply_test.cc.o: my_library/test/CMakeFiles/multiply_test.dir/flags.make
my_library/test/CMakeFiles/multiply_test.dir/multiply_test.cc.o: my_library/test/multiply_test.cc
my_library/test/CMakeFiles/multiply_test.dir/multiply_test.cc.o: my_library/test/CMakeFiles/multiply_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tanmayvijay/cmake_cpp_template/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object my_library/test/CMakeFiles/multiply_test.dir/multiply_test.cc.o"
	cd /Users/tanmayvijay/cmake_cpp_template/my_library/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT my_library/test/CMakeFiles/multiply_test.dir/multiply_test.cc.o -MF CMakeFiles/multiply_test.dir/multiply_test.cc.o.d -o CMakeFiles/multiply_test.dir/multiply_test.cc.o -c /Users/tanmayvijay/cmake_cpp_template/my_library/test/multiply_test.cc

my_library/test/CMakeFiles/multiply_test.dir/multiply_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/multiply_test.dir/multiply_test.cc.i"
	cd /Users/tanmayvijay/cmake_cpp_template/my_library/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tanmayvijay/cmake_cpp_template/my_library/test/multiply_test.cc > CMakeFiles/multiply_test.dir/multiply_test.cc.i

my_library/test/CMakeFiles/multiply_test.dir/multiply_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/multiply_test.dir/multiply_test.cc.s"
	cd /Users/tanmayvijay/cmake_cpp_template/my_library/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tanmayvijay/cmake_cpp_template/my_library/test/multiply_test.cc -o CMakeFiles/multiply_test.dir/multiply_test.cc.s

# Object files for target multiply_test
multiply_test_OBJECTS = \
"CMakeFiles/multiply_test.dir/multiply_test.cc.o"

# External object files for target multiply_test
multiply_test_EXTERNAL_OBJECTS =

my_library/test/multiply_test: my_library/test/CMakeFiles/multiply_test.dir/multiply_test.cc.o
my_library/test/multiply_test: my_library/test/CMakeFiles/multiply_test.dir/build.make
my_library/test/multiply_test: my_library/src/libmultiply.a
my_library/test/multiply_test: lib/libgtest_main.a
my_library/test/multiply_test: lib/libgtest.a
my_library/test/multiply_test: my_library/test/CMakeFiles/multiply_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tanmayvijay/cmake_cpp_template/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable multiply_test"
	cd /Users/tanmayvijay/cmake_cpp_template/my_library/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/multiply_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
my_library/test/CMakeFiles/multiply_test.dir/build: my_library/test/multiply_test
.PHONY : my_library/test/CMakeFiles/multiply_test.dir/build

my_library/test/CMakeFiles/multiply_test.dir/clean:
	cd /Users/tanmayvijay/cmake_cpp_template/my_library/test && $(CMAKE_COMMAND) -P CMakeFiles/multiply_test.dir/cmake_clean.cmake
.PHONY : my_library/test/CMakeFiles/multiply_test.dir/clean

my_library/test/CMakeFiles/multiply_test.dir/depend:
	cd /Users/tanmayvijay/cmake_cpp_template && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tanmayvijay/cmake_cpp_template /Users/tanmayvijay/cmake_cpp_template/my_library/test /Users/tanmayvijay/cmake_cpp_template /Users/tanmayvijay/cmake_cpp_template/my_library/test /Users/tanmayvijay/cmake_cpp_template/my_library/test/CMakeFiles/multiply_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : my_library/test/CMakeFiles/multiply_test.dir/depend

