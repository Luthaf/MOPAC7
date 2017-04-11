cmake_minimum_required(VERSION 2.8.11)

project(MOPAC Fortran)

set(CMAKE_Fortran_MODULE_DIRECTORY ${PROJECT_BINARY_DIR}/mod)

file(GLOB MODULES_SRC src_modules/*.f90 src_modules/*.F90)
add_library(modules ${MODULES_SRC})

file(GLOB INTERFACES_SRC src_interfaces/*.f90 src_interfaces/*.F90)
add_library(interfaces ${INTERFACES_SRC})
target_link_libraries(interfaces modules)

file(GLOB SUBROUTINES_SRC src_subroutines/*.f90 src_subroutines/*.F90)
list(REMOVE_ITEM SUBROUTINES_SRC src_subroutines/mopac.F90)
add_library(subroutines ${SUBROUTINES_SRC})
target_link_libraries(subroutines interfaces)

add_executable(mopac src_subroutines/mopac.F90)
target_link_libraries(mopac subroutines)

install(TARGETS mopac DESTINATION bin)
