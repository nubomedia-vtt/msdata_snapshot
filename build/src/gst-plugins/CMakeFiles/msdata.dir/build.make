# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/tteyli/nubo_v6.5/msdata_snapshot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tteyli/nubo_v6.5/msdata_snapshot/build

# Include any dependencies generated for this target.
include src/gst-plugins/CMakeFiles/msdata.dir/depend.make

# Include the progress variables for this target.
include src/gst-plugins/CMakeFiles/msdata.dir/progress.make

# Include the compile flags for this target's objects.
include src/gst-plugins/CMakeFiles/msdata.dir/flags.make

src/gst-plugins/CMakeFiles/msdata.dir/msdata.c.o: src/gst-plugins/CMakeFiles/msdata.dir/flags.make
src/gst-plugins/CMakeFiles/msdata.dir/msdata.c.o: ../src/gst-plugins/msdata.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tteyli/nubo_v6.5/msdata_snapshot/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/gst-plugins/CMakeFiles/msdata.dir/msdata.c.o"
	cd /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/msdata.dir/msdata.c.o   -c /home/tteyli/nubo_v6.5/msdata_snapshot/src/gst-plugins/msdata.c

src/gst-plugins/CMakeFiles/msdata.dir/msdata.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msdata.dir/msdata.c.i"
	cd /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/tteyli/nubo_v6.5/msdata_snapshot/src/gst-plugins/msdata.c > CMakeFiles/msdata.dir/msdata.c.i

src/gst-plugins/CMakeFiles/msdata.dir/msdata.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msdata.dir/msdata.c.s"
	cd /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/tteyli/nubo_v6.5/msdata_snapshot/src/gst-plugins/msdata.c -o CMakeFiles/msdata.dir/msdata.c.s

src/gst-plugins/CMakeFiles/msdata.dir/msdata.c.o.requires:
.PHONY : src/gst-plugins/CMakeFiles/msdata.dir/msdata.c.o.requires

src/gst-plugins/CMakeFiles/msdata.dir/msdata.c.o.provides: src/gst-plugins/CMakeFiles/msdata.dir/msdata.c.o.requires
	$(MAKE) -f src/gst-plugins/CMakeFiles/msdata.dir/build.make src/gst-plugins/CMakeFiles/msdata.dir/msdata.c.o.provides.build
.PHONY : src/gst-plugins/CMakeFiles/msdata.dir/msdata.c.o.provides

src/gst-plugins/CMakeFiles/msdata.dir/msdata.c.o.provides.build: src/gst-plugins/CMakeFiles/msdata.dir/msdata.c.o

src/gst-plugins/CMakeFiles/msdata.dir/gstmsdata.cpp.o: src/gst-plugins/CMakeFiles/msdata.dir/flags.make
src/gst-plugins/CMakeFiles/msdata.dir/gstmsdata.cpp.o: ../src/gst-plugins/gstmsdata.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tteyli/nubo_v6.5/msdata_snapshot/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/gst-plugins/CMakeFiles/msdata.dir/gstmsdata.cpp.o"
	cd /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/msdata.dir/gstmsdata.cpp.o -c /home/tteyli/nubo_v6.5/msdata_snapshot/src/gst-plugins/gstmsdata.cpp

src/gst-plugins/CMakeFiles/msdata.dir/gstmsdata.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/msdata.dir/gstmsdata.cpp.i"
	cd /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/tteyli/nubo_v6.5/msdata_snapshot/src/gst-plugins/gstmsdata.cpp > CMakeFiles/msdata.dir/gstmsdata.cpp.i

src/gst-plugins/CMakeFiles/msdata.dir/gstmsdata.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/msdata.dir/gstmsdata.cpp.s"
	cd /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/tteyli/nubo_v6.5/msdata_snapshot/src/gst-plugins/gstmsdata.cpp -o CMakeFiles/msdata.dir/gstmsdata.cpp.s

src/gst-plugins/CMakeFiles/msdata.dir/gstmsdata.cpp.o.requires:
.PHONY : src/gst-plugins/CMakeFiles/msdata.dir/gstmsdata.cpp.o.requires

src/gst-plugins/CMakeFiles/msdata.dir/gstmsdata.cpp.o.provides: src/gst-plugins/CMakeFiles/msdata.dir/gstmsdata.cpp.o.requires
	$(MAKE) -f src/gst-plugins/CMakeFiles/msdata.dir/build.make src/gst-plugins/CMakeFiles/msdata.dir/gstmsdata.cpp.o.provides.build
.PHONY : src/gst-plugins/CMakeFiles/msdata.dir/gstmsdata.cpp.o.provides

src/gst-plugins/CMakeFiles/msdata.dir/gstmsdata.cpp.o.provides.build: src/gst-plugins/CMakeFiles/msdata.dir/gstmsdata.cpp.o

src/gst-plugins/CMakeFiles/msdata.dir/kmsshowdata.cpp.o: src/gst-plugins/CMakeFiles/msdata.dir/flags.make
src/gst-plugins/CMakeFiles/msdata.dir/kmsshowdata.cpp.o: ../src/gst-plugins/kmsshowdata.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tteyli/nubo_v6.5/msdata_snapshot/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/gst-plugins/CMakeFiles/msdata.dir/kmsshowdata.cpp.o"
	cd /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/msdata.dir/kmsshowdata.cpp.o -c /home/tteyli/nubo_v6.5/msdata_snapshot/src/gst-plugins/kmsshowdata.cpp

src/gst-plugins/CMakeFiles/msdata.dir/kmsshowdata.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/msdata.dir/kmsshowdata.cpp.i"
	cd /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/tteyli/nubo_v6.5/msdata_snapshot/src/gst-plugins/kmsshowdata.cpp > CMakeFiles/msdata.dir/kmsshowdata.cpp.i

src/gst-plugins/CMakeFiles/msdata.dir/kmsshowdata.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/msdata.dir/kmsshowdata.cpp.s"
	cd /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/tteyli/nubo_v6.5/msdata_snapshot/src/gst-plugins/kmsshowdata.cpp -o CMakeFiles/msdata.dir/kmsshowdata.cpp.s

src/gst-plugins/CMakeFiles/msdata.dir/kmsshowdata.cpp.o.requires:
.PHONY : src/gst-plugins/CMakeFiles/msdata.dir/kmsshowdata.cpp.o.requires

src/gst-plugins/CMakeFiles/msdata.dir/kmsshowdata.cpp.o.provides: src/gst-plugins/CMakeFiles/msdata.dir/kmsshowdata.cpp.o.requires
	$(MAKE) -f src/gst-plugins/CMakeFiles/msdata.dir/build.make src/gst-plugins/CMakeFiles/msdata.dir/kmsshowdata.cpp.o.provides.build
.PHONY : src/gst-plugins/CMakeFiles/msdata.dir/kmsshowdata.cpp.o.provides

src/gst-plugins/CMakeFiles/msdata.dir/kmsshowdata.cpp.o.provides.build: src/gst-plugins/CMakeFiles/msdata.dir/kmsshowdata.cpp.o

src/gst-plugins/CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.o: src/gst-plugins/CMakeFiles/msdata.dir/flags.make
src/gst-plugins/CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.o: ../src/gst-plugins/kmsgraphsmetadata.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tteyli/nubo_v6.5/msdata_snapshot/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/gst-plugins/CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.o"
	cd /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.o -c /home/tteyli/nubo_v6.5/msdata_snapshot/src/gst-plugins/kmsgraphsmetadata.cpp

src/gst-plugins/CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.i"
	cd /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/tteyli/nubo_v6.5/msdata_snapshot/src/gst-plugins/kmsgraphsmetadata.cpp > CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.i

src/gst-plugins/CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.s"
	cd /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/tteyli/nubo_v6.5/msdata_snapshot/src/gst-plugins/kmsgraphsmetadata.cpp -o CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.s

src/gst-plugins/CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.o.requires:
.PHONY : src/gst-plugins/CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.o.requires

src/gst-plugins/CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.o.provides: src/gst-plugins/CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.o.requires
	$(MAKE) -f src/gst-plugins/CMakeFiles/msdata.dir/build.make src/gst-plugins/CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.o.provides.build
.PHONY : src/gst-plugins/CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.o.provides

src/gst-plugins/CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.o.provides.build: src/gst-plugins/CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.o

# Object files for target msdata
msdata_OBJECTS = \
"CMakeFiles/msdata.dir/msdata.c.o" \
"CMakeFiles/msdata.dir/gstmsdata.cpp.o" \
"CMakeFiles/msdata.dir/kmsshowdata.cpp.o" \
"CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.o"

# External object files for target msdata
msdata_EXTERNAL_OBJECTS =

src/gst-plugins/libmsdata.so: src/gst-plugins/CMakeFiles/msdata.dir/msdata.c.o
src/gst-plugins/libmsdata.so: src/gst-plugins/CMakeFiles/msdata.dir/gstmsdata.cpp.o
src/gst-plugins/libmsdata.so: src/gst-plugins/CMakeFiles/msdata.dir/kmsshowdata.cpp.o
src/gst-plugins/libmsdata.so: src/gst-plugins/CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.o
src/gst-plugins/libmsdata.so: src/gst-plugins/CMakeFiles/msdata.dir/build.make
src/gst-plugins/libmsdata.so: /usr/lib/x86_64-linux-gnu/libkmsgstcommons.so
src/gst-plugins/libmsdata.so: src/gst-plugins/CMakeFiles/msdata.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module libmsdata.so"
	cd /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/msdata.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/gst-plugins/CMakeFiles/msdata.dir/build: src/gst-plugins/libmsdata.so
.PHONY : src/gst-plugins/CMakeFiles/msdata.dir/build

src/gst-plugins/CMakeFiles/msdata.dir/requires: src/gst-plugins/CMakeFiles/msdata.dir/msdata.c.o.requires
src/gst-plugins/CMakeFiles/msdata.dir/requires: src/gst-plugins/CMakeFiles/msdata.dir/gstmsdata.cpp.o.requires
src/gst-plugins/CMakeFiles/msdata.dir/requires: src/gst-plugins/CMakeFiles/msdata.dir/kmsshowdata.cpp.o.requires
src/gst-plugins/CMakeFiles/msdata.dir/requires: src/gst-plugins/CMakeFiles/msdata.dir/kmsgraphsmetadata.cpp.o.requires
.PHONY : src/gst-plugins/CMakeFiles/msdata.dir/requires

src/gst-plugins/CMakeFiles/msdata.dir/clean:
	cd /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins && $(CMAKE_COMMAND) -P CMakeFiles/msdata.dir/cmake_clean.cmake
.PHONY : src/gst-plugins/CMakeFiles/msdata.dir/clean

src/gst-plugins/CMakeFiles/msdata.dir/depend:
	cd /home/tteyli/nubo_v6.5/msdata_snapshot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tteyli/nubo_v6.5/msdata_snapshot /home/tteyli/nubo_v6.5/msdata_snapshot/src/gst-plugins /home/tteyli/nubo_v6.5/msdata_snapshot/build /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins /home/tteyli/nubo_v6.5/msdata_snapshot/build/src/gst-plugins/CMakeFiles/msdata.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/gst-plugins/CMakeFiles/msdata.dir/depend

