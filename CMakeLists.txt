cmake_minimum_required(VERSION 3.25)  # CMake version check
project(MultiplyTest LANGUAGES CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(Boost REQUIRED program_options REQUIRED)
IF(Boost_FOUND)
  message("Boost found")
  INCLUDE_DIRECTORIES(${Boost_INCLUDE_DIRS})
  LINK_DIRECTORIES(${Boost_LIBRARY_DIRS})
ENDIF(Boost_FOUND)


# Create symlink to compile_commands.json for lsp
execute_process(COMMAND ${CMAKE_COMMAND} -E create_symlink ${CMAKE_BINARY_DIR}/compile_commands.json ${CMAKE_SOURCE_DIR}/compile_commands.json)


# Add support for cmake/ for Find*.cmake files
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

enable_testing()                      # enable testing

# Add add_subdirectory() calls in order of dependences
add_subdirectory(my_library)                 # 

add_executable(main main.cc) 
target_link_libraries(main PRIVATE multiply ${Boost_LIBRARIES})

