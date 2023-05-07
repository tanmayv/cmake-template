* Directory structure
  project/
    cmake/              # Contains Find*.cmake files
    CMakeLists.txt      # root CMakeLists.txt; contains add_subdirectory() calls in order of dependences
    library/
      CMakeLists.txt
      src/
        CMakeLists.txt  # Source files for library
        ...source_files
      test/
        CMakeLists.txt  # Test cases for library; Fetch google_test has dependency
        ...test_files
    binary/
      CMakeLists.txt
      src/
        CMakeLists.txt
        ...source_files
      test/
        CMakeLists.txt
        ...test_files

* CMakeLists.txt Files
** Root CmakeLists.txt
*** clangd lsp support
    set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
*** Structure
    cmake_minimum_required(VERSION 3.25)  # CMake version check
    project(MultiplyTest LANGUAGES CXX)

    set(CMAKE_CXX_STANDARD 17)
    set(CMAKE_CXX_STANDARD_REQUIRED ON)
    set(CMAKE_CXX_EXTENSIONS OFF)

    # Add support for cmake/ for Find*.cmake files
    list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_PROJECT_DIR}/cmake")


    enable_testing()                      # enable testing

    # Add add_subdirectory() calls in order of dependences
    add_subdirectory(library)                 # 
    add_subdirectory(binary)


