# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.12.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.12.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lmf/git/LiMingFei56.github.io/mydiscuss/opencv/demo3_2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lmf/git/LiMingFei56.github.io/mydiscuss/opencv/demo3_2/build

# Include any dependencies generated for this target.
include CMakeFiles/demo2_7.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/demo2_7.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/demo2_7.dir/flags.make

CMakeFiles/demo2_7.dir/main.cpp.o: CMakeFiles/demo2_7.dir/flags.make
CMakeFiles/demo2_7.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lmf/git/LiMingFei56.github.io/mydiscuss/opencv/demo3_2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/demo2_7.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/demo2_7.dir/main.cpp.o -c /Users/lmf/git/LiMingFei56.github.io/mydiscuss/opencv/demo3_2/main.cpp

CMakeFiles/demo2_7.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo2_7.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lmf/git/LiMingFei56.github.io/mydiscuss/opencv/demo3_2/main.cpp > CMakeFiles/demo2_7.dir/main.cpp.i

CMakeFiles/demo2_7.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo2_7.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lmf/git/LiMingFei56.github.io/mydiscuss/opencv/demo3_2/main.cpp -o CMakeFiles/demo2_7.dir/main.cpp.s

# Object files for target demo2_7
demo2_7_OBJECTS = \
"CMakeFiles/demo2_7.dir/main.cpp.o"

# External object files for target demo2_7
demo2_7_EXTERNAL_OBJECTS =

demo2_7: CMakeFiles/demo2_7.dir/main.cpp.o
demo2_7: CMakeFiles/demo2_7.dir/build.make
demo2_7: /usr/local/lib/libopencv_stitching.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_superres.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_videostab.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_aruco.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_bgsegm.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_bioinspired.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_ccalib.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_dnn_objdetect.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_dpm.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_face.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_fuzzy.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_hfs.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_img_hash.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_line_descriptor.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_optflow.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_reg.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_rgbd.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_saliency.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_stereo.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_structured_light.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_surface_matching.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_tracking.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_xfeatures2d.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_ximgproc.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_xobjdetect.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_xphoto.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_shape.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_photo.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_calib3d.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_features2d.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_highgui.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_videoio.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_phase_unwrapping.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_dnn.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_video.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_datasets.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_flann.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_ml.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_plot.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_imgcodecs.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_objdetect.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_imgproc.3.4.3.dylib
demo2_7: /usr/local/lib/libopencv_core.3.4.3.dylib
demo2_7: CMakeFiles/demo2_7.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lmf/git/LiMingFei56.github.io/mydiscuss/opencv/demo3_2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable demo2_7"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo2_7.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/demo2_7.dir/build: demo2_7

.PHONY : CMakeFiles/demo2_7.dir/build

CMakeFiles/demo2_7.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/demo2_7.dir/cmake_clean.cmake
.PHONY : CMakeFiles/demo2_7.dir/clean

CMakeFiles/demo2_7.dir/depend:
	cd /Users/lmf/git/LiMingFei56.github.io/mydiscuss/opencv/demo3_2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lmf/git/LiMingFei56.github.io/mydiscuss/opencv/demo3_2 /Users/lmf/git/LiMingFei56.github.io/mydiscuss/opencv/demo3_2 /Users/lmf/git/LiMingFei56.github.io/mydiscuss/opencv/demo3_2/build /Users/lmf/git/LiMingFei56.github.io/mydiscuss/opencv/demo3_2/build /Users/lmf/git/LiMingFei56.github.io/mydiscuss/opencv/demo3_2/build/CMakeFiles/demo2_7.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/demo2_7.dir/depend
