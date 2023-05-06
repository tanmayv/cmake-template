    cmake_minimum_required(VERSION 3.25)  # CMake version check
    project(MultiplyTest LANGUAGES CXX)

    set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
    set(CMAKE_CXX_STANDARD 17)
    set(CMAKE_CXX_STANDARD_REQUIRED ON)
    set(CMAKE_CXX_EXTENSIONS OFF)

    # Add support for cmake/ for Find*.cmake files
    list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_PROJECT_DIR}/cmake")

    enable_testing()                      # enable testing

    # Add add_subdirectory() calls in order of dependences
    add_subdirectory(library)                 # 
    # add_subdirectory(binary)

