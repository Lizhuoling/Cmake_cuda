#cmake最小版本要求
cmake_minimum_required(VERSION 3.2)
#工程名
project(demo)
#添加include目录
add_subdirectory(include)
#设置生成可执行文件名
set(exe_file test.o)
#搜索该目录下源文件
aux_source_directory(. SRC_FILE)
#添加可执行文件
add_executable(${exe_file} ${SRC_FILE})
#添加链接文件
target_link_libraries(${exe_file} device)
