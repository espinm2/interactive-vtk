cmake_minimum_required(VERSION 2.8) 

PROJECT(ConstructTree)
 
find_package(VTK REQUIRED)
include(${VTK_USE_FILE})
 
add_executable(ConstructTree MACOSX_BUNDLE ConstructTree)
 
if(VTK_LIBRARIES)
  target_link_libraries(ConstructTree ${VTK_LIBRARIES})
else()
  target_link_libraries(ConstructTree vtkHybrid vtkWidgets)
endif(e)
