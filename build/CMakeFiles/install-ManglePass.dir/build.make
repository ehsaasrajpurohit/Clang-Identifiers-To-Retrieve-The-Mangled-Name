# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/ehsaasrajpurohit/Desktop/CD El/IM-LLVM-Pass-main"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/ehsaasrajpurohit/Desktop/CD El/IM-LLVM-Pass-main/build"

# Utility rule file for install-ManglePass.

# Include any custom commands dependencies for this target.
include CMakeFiles/install-ManglePass.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/install-ManglePass.dir/progress.make

CMakeFiles/install-ManglePass:
	/opt/homebrew/Cellar/cmake/3.30.1/bin/cmake -DCMAKE_INSTALL_COMPONENT="ManglePass" -P /Users/ehsaasrajpurohit/Desktop/CD\ El/IM-LLVM-Pass-main/build/cmake_install.cmake

install-ManglePass: CMakeFiles/install-ManglePass
install-ManglePass: CMakeFiles/install-ManglePass.dir/build.make
.PHONY : install-ManglePass

# Rule to build all files generated by this target.
CMakeFiles/install-ManglePass.dir/build: install-ManglePass
.PHONY : CMakeFiles/install-ManglePass.dir/build

CMakeFiles/install-ManglePass.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/install-ManglePass.dir/cmake_clean.cmake
.PHONY : CMakeFiles/install-ManglePass.dir/clean

CMakeFiles/install-ManglePass.dir/depend:
	cd "/Users/ehsaasrajpurohit/Desktop/CD El/IM-LLVM-Pass-main/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/ehsaasrajpurohit/Desktop/CD El/IM-LLVM-Pass-main" "/Users/ehsaasrajpurohit/Desktop/CD El/IM-LLVM-Pass-main" "/Users/ehsaasrajpurohit/Desktop/CD El/IM-LLVM-Pass-main/build" "/Users/ehsaasrajpurohit/Desktop/CD El/IM-LLVM-Pass-main/build" "/Users/ehsaasrajpurohit/Desktop/CD El/IM-LLVM-Pass-main/build/CMakeFiles/install-ManglePass.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/install-ManglePass.dir/depend

