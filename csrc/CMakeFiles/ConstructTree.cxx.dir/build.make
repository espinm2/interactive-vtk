# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /home/ionaic/Dropbox/visualization/hw2/interactive-vtk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ionaic/Dropbox/visualization/hw2/interactive-vtk

# Include any dependencies generated for this target.
include CMakeFiles/ConstructTree.cxx.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ConstructTree.cxx.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ConstructTree.cxx.dir/flags.make

CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.o: CMakeFiles/ConstructTree.cxx.dir/flags.make
CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.o: ConstructTree.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ionaic/Dropbox/visualization/hw2/interactive-vtk/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.o -c /home/ionaic/Dropbox/visualization/hw2/interactive-vtk/ConstructTree.cxx

CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ionaic/Dropbox/visualization/hw2/interactive-vtk/ConstructTree.cxx > CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.i

CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ionaic/Dropbox/visualization/hw2/interactive-vtk/ConstructTree.cxx -o CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.s

CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.o.requires:
.PHONY : CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.o.requires

CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.o.provides: CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.o.requires
	$(MAKE) -f CMakeFiles/ConstructTree.cxx.dir/build.make CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.o.provides.build
.PHONY : CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.o.provides

CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.o.provides.build: CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.o

# Object files for target ConstructTree.cxx
ConstructTree_cxx_OBJECTS = \
"CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.o"

# External object files for target ConstructTree.cxx
ConstructTree_cxx_EXTERNAL_OBJECTS =

ConstructTree.cxx: CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.o
ConstructTree.cxx: CMakeFiles/ConstructTree.cxx.dir/build.make
ConstructTree.cxx: /usr/local/lib/libvtkFiltersExtraction-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonExecutionModel-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonDataModel-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonMath-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtksys-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonMisc-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonSystem-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonTransforms-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersGeneral-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonComputationalGeometry-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersStatistics-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkImagingFourier-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkImagingCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkalglib-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersGeneric-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersSources-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersParallel-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersModeling-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkParallelCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOLegacy-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkzlib-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersGeometry-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOImage-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkDICOMParser-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkmetaio-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkjpeg-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkpng-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtktiff-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOXMLParser-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkexpat-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingAnnotation-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkImagingColor-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingFreeType-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkfreetype-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkftgl-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOEnSight-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingLabel-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtksqlite-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOImport-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonColor-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkImagingGeneral-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkImagingSources-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkverdict-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingOpenGL-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkImagingHybrid-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOLSDyna-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOXML-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOGeometry-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkjsoncpp-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersAMR-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingGL2PS-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingContext2D-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkgl2ps-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingVolumeOpenGL-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingVolume-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkInfovisLayout-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkInfovisCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOMINC-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersHybrid-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkNetCDF-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkNetCDF_cxx-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkhdf5_hl-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkhdf5-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkImagingMorphological-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtklibxml2-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkTestingGenericBridge-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersVerdict-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOInfovis-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersParallelImaging-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersImaging-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingFreeTypeOpenGL-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkChartsCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOVideo-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkImagingStencil-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersHyperTree-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkoggtheora-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkPythonInterpreter-6.0.so.1
ConstructTree.cxx: /usr/lib64/libpython2.7.so
ConstructTree.cxx: /usr/local/lib/libvtkIOExport-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersFlowPaths-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkImagingMath-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkWrappingPython27Core-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkWrappingTools-6.0.a
ConstructTree.cxx: /usr/local/lib/libvtkViewsInfovis-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkInteractionStyle-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkViewsCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkInteractionWidgets-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOAMR-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkDomainsChemistry-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOExodus-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkexoIIc-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingLOD-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkTestingIOSQL-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOSQL-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersSelection-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersTexture-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkGeovisCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkproj4-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingHybridOpenGL-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkTestingRendering-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOPLY-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkViewsGeovis-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingVolumeAMR-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkViewsContext2D-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOMovie-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIONetCDF-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOParallel-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersProgrammable-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkImagingStatistics-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingImage-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkInteractionImage-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkverdict-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtklibxml2-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonColor-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingGL2PS-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkgl2ps-6.0.so.1
ConstructTree.cxx: /usr/lib64/libpython2.7.so
ConstructTree.cxx: /usr/local/lib/libvtksqlite-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkViewsInfovis-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingLabel-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersImaging-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkGeovisCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkInfovisLayout-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkInfovisCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkproj4-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersAMR-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingContext2D-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingOpenGL-6.0.so.1
ConstructTree.cxx: /usr/lib64/libGLU.so
ConstructTree.cxx: /usr/lib64/libSM.so
ConstructTree.cxx: /usr/lib64/libICE.so
ConstructTree.cxx: /usr/lib64/libX11.so
ConstructTree.cxx: /usr/lib64/libXext.so
ConstructTree.cxx: /usr/lib64/libXt.so
ConstructTree.cxx: /usr/local/lib/libvtkViewsCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkoggtheora-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersParallel-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkParallelCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOLegacy-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOXML-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOGeometry-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkjsoncpp-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkexoIIc-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIONetCDF-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkNetCDF_cxx-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkNetCDF-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkhdf5_hl-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkhdf5-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkInteractionWidgets-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersModeling-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingAnnotation-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkImagingColor-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingFreeType-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkftgl-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkfreetype-6.0.so.1
ConstructTree.cxx: /usr/lib64/libGL.so
ConstructTree.cxx: /usr/local/lib/libvtkImagingGeneral-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkImagingHybrid-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingVolume-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersHybrid-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkImagingSources-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkInteractionStyle-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkRenderingCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersExtraction-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersStatistics-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkImagingFourier-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkImagingCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkalglib-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersSources-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersGeneral-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonComputationalGeometry-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersGeometry-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkFiltersCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOImage-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkDICOMParser-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkmetaio-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkpng-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtktiff-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkjpeg-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOXMLParser-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkIOCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonExecutionModel-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonDataModel-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonSystem-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonTransforms-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonMisc-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonMath-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkCommonCore-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtksys-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkzlib-6.0.so.1
ConstructTree.cxx: /usr/local/lib/libvtkexpat-6.0.so.1
ConstructTree.cxx: CMakeFiles/ConstructTree.cxx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ConstructTree.cxx"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ConstructTree.cxx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ConstructTree.cxx.dir/build: ConstructTree.cxx
.PHONY : CMakeFiles/ConstructTree.cxx.dir/build

CMakeFiles/ConstructTree.cxx.dir/requires: CMakeFiles/ConstructTree.cxx.dir/ConstructTree.cxx.o.requires
.PHONY : CMakeFiles/ConstructTree.cxx.dir/requires

CMakeFiles/ConstructTree.cxx.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ConstructTree.cxx.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ConstructTree.cxx.dir/clean

CMakeFiles/ConstructTree.cxx.dir/depend:
	cd /home/ionaic/Dropbox/visualization/hw2/interactive-vtk && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ionaic/Dropbox/visualization/hw2/interactive-vtk /home/ionaic/Dropbox/visualization/hw2/interactive-vtk /home/ionaic/Dropbox/visualization/hw2/interactive-vtk /home/ionaic/Dropbox/visualization/hw2/interactive-vtk /home/ionaic/Dropbox/visualization/hw2/interactive-vtk/CMakeFiles/ConstructTree.cxx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ConstructTree.cxx.dir/depend

