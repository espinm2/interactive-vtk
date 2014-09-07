cmake_minimum_required(VERSION 2.8) 

PROJECT(InterVisHW2)
 
find_package(VTK REQUIRED)
include(${VTK_USE_FILE})

set(APP_SOURCES ConstructTree.cxx Tree.cxx)

foreach( srcfile ${APP_SOURCES} )
    string( REPLACE ".cxx" "" targetname ${srcfile} )

    add_executable(${targetname} MACOSX_BUNDLE ${targetname})
    if(VTK_LIBRARIES)
      target_link_libraries(${targetname} ${VTK_LIBRARIES})
    else()
      target_link_libraries(${targetname} vtkHybrid vtkWidgets)
    endif(e)
endforeach( srcfile ${APP_SOURCES} )
 
#add_executable(Tree MACOSX_BUNDLE Tree)
#if(VTK_LIBRARIES)
#  target_link_libraries(Tree ${VTK_LIBRARIES})
#else()
#  target_link_libraries(Tree vtkHybrid vtkWidgets)
#endif(e)
#
#add_executable(ConstructTree MACOSX_BUNDLE ConstructTree)
#if(VTK_LIBRARIES)
#  target_link_libraries(ConstructTree ${VTK_LIBRARIES})
#else()
#  target_link_libraries(ConstructTree vtkHybrid vtkWidgets)
#endif(e)
