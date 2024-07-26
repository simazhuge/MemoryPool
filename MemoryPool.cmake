set(CMAKE_CXX_STANDARD 11)
get_filename_component(MEMORYPOOL_PROJECT_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" DIRECTORY)
message("Current .cmake file: ${CMAKE_CURRENT_LIST_FILE}")
# 获取当前 .cmake 文件所在的目录
get_filename_component(MEMORYPOOL_PROJECT_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" DIRECTORY)


file(GLOB_RECURSE MEMORYPOOL_SOURCES "${MEMORYPOOL_PROJECT_CMAKE_DIR}/C-11/*.h")
message("---------------------" "${MEMORYPOOL_SOURCES}")
add_library(MemoryPool OBJECT ${MEMORYPOOL_SOURCES})
target_link_libraries(MemoryPool)
target_include_directories(MemoryPool PUBLIC ${CMAKE_CURRENT_LIST_DIR})
set_target_properties(MemoryPool PROPERTIES LINKER_LANGUAGE CXX)
