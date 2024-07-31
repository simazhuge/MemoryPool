cmake_minimum_required(VERSION 3.5)

project(MemoryPoolTest LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
include(MemoryPool.cmake)

add_executable(MemoryPoolTest main.cpp)

include(GNUInstallDirs)
install(TARGETS MemoryPoolTest
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
