# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /home/nguyennghia/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/nguyennghia/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nguyennghia/Projects/kplib/solvers

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nguyennghia/Projects/kplib/solvers/build

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/main.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/main.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/main.cpp.o: ../main.cpp
CMakeFiles/main.dir/main.cpp.o: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nguyennghia/Projects/kplib/solvers/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/main.cpp.o -MF CMakeFiles/main.dir/main.cpp.o.d -o CMakeFiles/main.dir/main.cpp.o -c /home/nguyennghia/Projects/kplib/solvers/main.cpp

CMakeFiles/main.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nguyennghia/Projects/kplib/solvers/main.cpp > CMakeFiles/main.dir/main.cpp.i

CMakeFiles/main.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nguyennghia/Projects/kplib/solvers/main.cpp -o CMakeFiles/main.dir/main.cpp.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

main: CMakeFiles/main.dir/main.cpp.o
main: CMakeFiles/main.dir/build.make
main: /usr/local/lib/libortools.so.9.1.9490
main: /usr/local/lib/libabsl_flags_parse.a
main: /usr/local/lib/libabsl_flags_usage.a
main: /usr/local/lib/libabsl_flags_usage_internal.a
main: /usr/local/lib/libabsl_flags.a
main: /usr/local/lib/libabsl_flags_internal.a
main: /usr/local/lib/libabsl_flags_marshalling.a
main: /usr/local/lib/libabsl_flags_reflection.a
main: /usr/local/lib/libabsl_flags_config.a
main: /usr/local/lib/libabsl_flags_private_handle_accessor.a
main: /usr/local/lib/libabsl_flags_commandlineflag.a
main: /usr/local/lib/libabsl_flags_commandlineflag_internal.a
main: /usr/local/lib/libabsl_flags_program_name.a
main: /usr/local/lib/libabsl_random_distributions.a
main: /usr/local/lib/libabsl_random_seed_sequences.a
main: /usr/local/lib/libabsl_random_internal_pool_urbg.a
main: /usr/local/lib/libabsl_random_internal_randen.a
main: /usr/local/lib/libabsl_random_internal_randen_hwaes.a
main: /usr/local/lib/libabsl_random_internal_randen_hwaes_impl.a
main: /usr/local/lib/libabsl_random_internal_randen_slow.a
main: /usr/local/lib/libabsl_random_internal_platform.a
main: /usr/local/lib/libabsl_random_internal_seed_material.a
main: /usr/local/lib/libabsl_random_seed_gen_exception.a
main: /usr/local/lib/libabsl_raw_hash_set.a
main: /usr/local/lib/libabsl_hashtablez_sampler.a
main: /usr/local/lib/libabsl_exponential_biased.a
main: /usr/local/lib/libabsl_hash.a
main: /usr/local/lib/libabsl_city.a
main: /usr/local/lib/libabsl_wyhash.a
main: /usr/local/lib/libabsl_leak_check.a
main: /usr/local/lib/libabsl_statusor.a
main: /usr/local/lib/libabsl_status.a
main: /usr/local/lib/libabsl_cord.a
main: /usr/local/lib/libabsl_bad_optional_access.a
main: /usr/local/lib/libabsl_bad_variant_access.a
main: /usr/local/lib/libabsl_str_format_internal.a
main: /usr/local/lib/libabsl_synchronization.a
main: /usr/local/lib/libabsl_stacktrace.a
main: /usr/local/lib/libabsl_symbolize.a
main: /usr/local/lib/libabsl_debugging_internal.a
main: /usr/local/lib/libabsl_demangle_internal.a
main: /usr/local/lib/libabsl_graphcycles_internal.a
main: /usr/local/lib/libabsl_malloc_internal.a
main: /usr/local/lib/libabsl_time.a
main: /usr/local/lib/libabsl_strings.a
main: /usr/local/lib/libabsl_strings_internal.a
main: /usr/local/lib/libabsl_base.a
main: /usr/local/lib/libabsl_spinlock_wait.a
main: /usr/local/lib/libabsl_throw_delegate.a
main: /usr/local/lib/libabsl_int128.a
main: /usr/local/lib/libabsl_civil_time.a
main: /usr/local/lib/libabsl_time_zone.a
main: /usr/local/lib/libabsl_bad_any_cast_impl.a
main: /usr/local/lib/libabsl_raw_logging_internal.a
main: /usr/local/lib/libabsl_log_severity.a
main: /usr/local/lib/libprotobuf.a
main: /usr/local/lib/libCbcSolver.a
main: /usr/local/lib/libOsiCbc.a
main: /usr/local/lib/libCbc.a
main: /usr/local/lib/libCgl.a
main: /usr/local/lib/libClpSolver.a
main: /usr/local/lib/libOsiClp.a
main: /usr/local/lib/libClp.a
main: /usr/local/lib/libOsi.a
main: /usr/local/lib/libCoinUtils.a
main: /usr/local/lib/libscip.a
main: /usr/local/lib/libz.a
main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nguyennghia/Projects/kplib/solvers/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: main
.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	cd /home/nguyennghia/Projects/kplib/solvers/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nguyennghia/Projects/kplib/solvers /home/nguyennghia/Projects/kplib/solvers /home/nguyennghia/Projects/kplib/solvers/build /home/nguyennghia/Projects/kplib/solvers/build /home/nguyennghia/Projects/kplib/solvers/build/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend
