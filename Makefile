# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/ignis/HDD/Repositories/MarkovPasswords

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/ignis/HDD/Repositories/MarkovPasswords

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /media/ignis/HDD/Repositories/MarkovPasswords/CMakeFiles /media/ignis/HDD/Repositories/MarkovPasswords/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /media/ignis/HDD/Repositories/MarkovPasswords/CMakeFiles 0
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
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named markovp

# Build rule for target.
markovp: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 markovp
.PHONY : markovp

# fast build rule for target.
markovp/fast:
	$(MAKE) -f CMakeFiles/markovp.dir/build.make CMakeFiles/markovp.dir/build
.PHONY : markovp/fast

#=============================================================================
# Target rules for targets named markov

# Build rule for target.
markov: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 markov
.PHONY : markov

# fast build rule for target.
markov/fast:
	$(MAKE) -f CMakeFiles/markov.dir/build.make CMakeFiles/markov.dir/build
.PHONY : markov/fast

MarkovAPI/src/markovPasswords.o: MarkovAPI/src/markovPasswords.cpp.o

.PHONY : MarkovAPI/src/markovPasswords.o

# target to build an object file
MarkovAPI/src/markovPasswords.cpp.o:
	$(MAKE) -f CMakeFiles/markov.dir/build.make CMakeFiles/markov.dir/MarkovAPI/src/markovPasswords.cpp.o
.PHONY : MarkovAPI/src/markovPasswords.cpp.o

MarkovAPI/src/markovPasswords.i: MarkovAPI/src/markovPasswords.cpp.i

.PHONY : MarkovAPI/src/markovPasswords.i

# target to preprocess a source file
MarkovAPI/src/markovPasswords.cpp.i:
	$(MAKE) -f CMakeFiles/markov.dir/build.make CMakeFiles/markov.dir/MarkovAPI/src/markovPasswords.cpp.i
.PHONY : MarkovAPI/src/markovPasswords.cpp.i

MarkovAPI/src/markovPasswords.s: MarkovAPI/src/markovPasswords.cpp.s

.PHONY : MarkovAPI/src/markovPasswords.s

# target to generate assembly for a file
MarkovAPI/src/markovPasswords.cpp.s:
	$(MAKE) -f CMakeFiles/markov.dir/build.make CMakeFiles/markov.dir/MarkovAPI/src/markovPasswords.cpp.s
.PHONY : MarkovAPI/src/markovPasswords.cpp.s

MarkovAPI/src/modelMatrix.o: MarkovAPI/src/modelMatrix.cpp.o

.PHONY : MarkovAPI/src/modelMatrix.o

# target to build an object file
MarkovAPI/src/modelMatrix.cpp.o:
	$(MAKE) -f CMakeFiles/markov.dir/build.make CMakeFiles/markov.dir/MarkovAPI/src/modelMatrix.cpp.o
.PHONY : MarkovAPI/src/modelMatrix.cpp.o

MarkovAPI/src/modelMatrix.i: MarkovAPI/src/modelMatrix.cpp.i

.PHONY : MarkovAPI/src/modelMatrix.i

# target to preprocess a source file
MarkovAPI/src/modelMatrix.cpp.i:
	$(MAKE) -f CMakeFiles/markov.dir/build.make CMakeFiles/markov.dir/MarkovAPI/src/modelMatrix.cpp.i
.PHONY : MarkovAPI/src/modelMatrix.cpp.i

MarkovAPI/src/modelMatrix.s: MarkovAPI/src/modelMatrix.cpp.s

.PHONY : MarkovAPI/src/modelMatrix.s

# target to generate assembly for a file
MarkovAPI/src/modelMatrix.cpp.s:
	$(MAKE) -f CMakeFiles/markov.dir/build.make CMakeFiles/markov.dir/MarkovAPI/src/modelMatrix.cpp.s
.PHONY : MarkovAPI/src/modelMatrix.cpp.s

MarkovAPI/src/threadSharedListHandler.o: MarkovAPI/src/threadSharedListHandler.cpp.o

.PHONY : MarkovAPI/src/threadSharedListHandler.o

# target to build an object file
MarkovAPI/src/threadSharedListHandler.cpp.o:
	$(MAKE) -f CMakeFiles/markov.dir/build.make CMakeFiles/markov.dir/MarkovAPI/src/threadSharedListHandler.cpp.o
.PHONY : MarkovAPI/src/threadSharedListHandler.cpp.o

MarkovAPI/src/threadSharedListHandler.i: MarkovAPI/src/threadSharedListHandler.cpp.i

.PHONY : MarkovAPI/src/threadSharedListHandler.i

# target to preprocess a source file
MarkovAPI/src/threadSharedListHandler.cpp.i:
	$(MAKE) -f CMakeFiles/markov.dir/build.make CMakeFiles/markov.dir/MarkovAPI/src/threadSharedListHandler.cpp.i
.PHONY : MarkovAPI/src/threadSharedListHandler.cpp.i

MarkovAPI/src/threadSharedListHandler.s: MarkovAPI/src/threadSharedListHandler.cpp.s

.PHONY : MarkovAPI/src/threadSharedListHandler.s

# target to generate assembly for a file
MarkovAPI/src/threadSharedListHandler.cpp.s:
	$(MAKE) -f CMakeFiles/markov.dir/build.make CMakeFiles/markov.dir/MarkovAPI/src/threadSharedListHandler.cpp.s
.PHONY : MarkovAPI/src/threadSharedListHandler.cpp.s

MarkovPasswords/src/argparse.o: MarkovPasswords/src/argparse.cpp.o

.PHONY : MarkovPasswords/src/argparse.o

# target to build an object file
MarkovPasswords/src/argparse.cpp.o:
	$(MAKE) -f CMakeFiles/markovp.dir/build.make CMakeFiles/markovp.dir/MarkovPasswords/src/argparse.cpp.o
.PHONY : MarkovPasswords/src/argparse.cpp.o

MarkovPasswords/src/argparse.i: MarkovPasswords/src/argparse.cpp.i

.PHONY : MarkovPasswords/src/argparse.i

# target to preprocess a source file
MarkovPasswords/src/argparse.cpp.i:
	$(MAKE) -f CMakeFiles/markovp.dir/build.make CMakeFiles/markovp.dir/MarkovPasswords/src/argparse.cpp.i
.PHONY : MarkovPasswords/src/argparse.cpp.i

MarkovPasswords/src/argparse.s: MarkovPasswords/src/argparse.cpp.s

.PHONY : MarkovPasswords/src/argparse.s

# target to generate assembly for a file
MarkovPasswords/src/argparse.cpp.s:
	$(MAKE) -f CMakeFiles/markovp.dir/build.make CMakeFiles/markovp.dir/MarkovPasswords/src/argparse.cpp.s
.PHONY : MarkovPasswords/src/argparse.cpp.s

MarkovPasswords/src/color/term.o: MarkovPasswords/src/color/term.cpp.o

.PHONY : MarkovPasswords/src/color/term.o

# target to build an object file
MarkovPasswords/src/color/term.cpp.o:
	$(MAKE) -f CMakeFiles/markovp.dir/build.make CMakeFiles/markovp.dir/MarkovPasswords/src/color/term.cpp.o
.PHONY : MarkovPasswords/src/color/term.cpp.o

MarkovPasswords/src/color/term.i: MarkovPasswords/src/color/term.cpp.i

.PHONY : MarkovPasswords/src/color/term.i

# target to preprocess a source file
MarkovPasswords/src/color/term.cpp.i:
	$(MAKE) -f CMakeFiles/markovp.dir/build.make CMakeFiles/markovp.dir/MarkovPasswords/src/color/term.cpp.i
.PHONY : MarkovPasswords/src/color/term.cpp.i

MarkovPasswords/src/color/term.s: MarkovPasswords/src/color/term.cpp.s

.PHONY : MarkovPasswords/src/color/term.s

# target to generate assembly for a file
MarkovPasswords/src/color/term.cpp.s:
	$(MAKE) -f CMakeFiles/markovp.dir/build.make CMakeFiles/markovp.dir/MarkovPasswords/src/color/term.cpp.s
.PHONY : MarkovPasswords/src/color/term.cpp.s

MarkovPasswords/src/main.o: MarkovPasswords/src/main.cpp.o

.PHONY : MarkovPasswords/src/main.o

# target to build an object file
MarkovPasswords/src/main.cpp.o:
	$(MAKE) -f CMakeFiles/markovp.dir/build.make CMakeFiles/markovp.dir/MarkovPasswords/src/main.cpp.o
.PHONY : MarkovPasswords/src/main.cpp.o

MarkovPasswords/src/main.i: MarkovPasswords/src/main.cpp.i

.PHONY : MarkovPasswords/src/main.i

# target to preprocess a source file
MarkovPasswords/src/main.cpp.i:
	$(MAKE) -f CMakeFiles/markovp.dir/build.make CMakeFiles/markovp.dir/MarkovPasswords/src/main.cpp.i
.PHONY : MarkovPasswords/src/main.cpp.i

MarkovPasswords/src/main.s: MarkovPasswords/src/main.cpp.s

.PHONY : MarkovPasswords/src/main.s

# target to generate assembly for a file
MarkovPasswords/src/main.cpp.s:
	$(MAKE) -f CMakeFiles/markovp.dir/build.make CMakeFiles/markovp.dir/MarkovPasswords/src/main.cpp.s
.PHONY : MarkovPasswords/src/main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... markovp"
	@echo "... rebuild_cache"
	@echo "... markov"
	@echo "... MarkovAPI/src/markovPasswords.o"
	@echo "... MarkovAPI/src/markovPasswords.i"
	@echo "... MarkovAPI/src/markovPasswords.s"
	@echo "... MarkovAPI/src/modelMatrix.o"
	@echo "... MarkovAPI/src/modelMatrix.i"
	@echo "... MarkovAPI/src/modelMatrix.s"
	@echo "... MarkovAPI/src/threadSharedListHandler.o"
	@echo "... MarkovAPI/src/threadSharedListHandler.i"
	@echo "... MarkovAPI/src/threadSharedListHandler.s"
	@echo "... MarkovPasswords/src/argparse.o"
	@echo "... MarkovPasswords/src/argparse.i"
	@echo "... MarkovPasswords/src/argparse.s"
	@echo "... MarkovPasswords/src/color/term.o"
	@echo "... MarkovPasswords/src/color/term.i"
	@echo "... MarkovPasswords/src/color/term.s"
	@echo "... MarkovPasswords/src/main.o"
	@echo "... MarkovPasswords/src/main.i"
	@echo "... MarkovPasswords/src/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

