# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09

# Include any dependencies generated for this target.
include Examples/DNSResolver/CMakeFiles/DNSResolver.dir/depend.make

# Include the progress variables for this target.
include Examples/DNSResolver/CMakeFiles/DNSResolver.dir/progress.make

# Include the compile flags for this target's objects.
include Examples/DNSResolver/CMakeFiles/DNSResolver.dir/flags.make

Examples/DNSResolver/CMakeFiles/DNSResolver.dir/main.cpp.o: Examples/DNSResolver/CMakeFiles/DNSResolver.dir/flags.make
Examples/DNSResolver/CMakeFiles/DNSResolver.dir/main.cpp.o: Examples/DNSResolver/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Examples/DNSResolver/CMakeFiles/DNSResolver.dir/main.cpp.o"
	cd /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09/Examples/DNSResolver && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DNSResolver.dir/main.cpp.o -c /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09/Examples/DNSResolver/main.cpp

Examples/DNSResolver/CMakeFiles/DNSResolver.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DNSResolver.dir/main.cpp.i"
	cd /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09/Examples/DNSResolver && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09/Examples/DNSResolver/main.cpp > CMakeFiles/DNSResolver.dir/main.cpp.i

Examples/DNSResolver/CMakeFiles/DNSResolver.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DNSResolver.dir/main.cpp.s"
	cd /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09/Examples/DNSResolver && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09/Examples/DNSResolver/main.cpp -o CMakeFiles/DNSResolver.dir/main.cpp.s

# Object files for target DNSResolver
DNSResolver_OBJECTS = \
"CMakeFiles/DNSResolver.dir/main.cpp.o"

# External object files for target DNSResolver
DNSResolver_EXTERNAL_OBJECTS =

examples_bin/DNSResolver: Examples/DNSResolver/CMakeFiles/DNSResolver.dir/main.cpp.o
examples_bin/DNSResolver: Examples/DNSResolver/CMakeFiles/DNSResolver.dir/build.make
examples_bin/DNSResolver: Pcap++/libPcap++.a
examples_bin/DNSResolver: Packet++/libPacket++.a
examples_bin/DNSResolver: Common++/libCommon++.a
examples_bin/DNSResolver: /usr/lib/x86_64-linux-gnu/libpcap.so
examples_bin/DNSResolver: Examples/DNSResolver/CMakeFiles/DNSResolver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../examples_bin/DNSResolver"
	cd /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09/Examples/DNSResolver && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DNSResolver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Examples/DNSResolver/CMakeFiles/DNSResolver.dir/build: examples_bin/DNSResolver

.PHONY : Examples/DNSResolver/CMakeFiles/DNSResolver.dir/build

Examples/DNSResolver/CMakeFiles/DNSResolver.dir/clean:
	cd /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09/Examples/DNSResolver && $(CMAKE_COMMAND) -P CMakeFiles/DNSResolver.dir/cmake_clean.cmake
.PHONY : Examples/DNSResolver/CMakeFiles/DNSResolver.dir/clean

Examples/DNSResolver/CMakeFiles/DNSResolver.dir/depend:
	cd /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09 /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09/Examples/DNSResolver /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09 /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09/Examples/DNSResolver /home/hun/Desktop/Anti_Virus/PcapPlusPlus-23.09/Examples/DNSResolver/CMakeFiles/DNSResolver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Examples/DNSResolver/CMakeFiles/DNSResolver.dir/depend

