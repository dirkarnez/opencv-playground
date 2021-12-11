cmake_minimum_required(VERSION 3.18)

# uncomment these 2 lines if using clang
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -target x86_64-pc-windows-gnu")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -target x86_64-pc-windows-gnu")

set(CMAKE_CXX_STANDARD_LIBRARIES "-static-libgcc -static-libstdc++ ${CMAKE_CXX_STANDARD_LIBRARIES}")

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,-Bstatic")

project(opencv-boilerplate)

set(OpenCV_STATIC ON)

find_package(OpenCV REQUIRED core imgcodecs PATHS 
    "C:/Users/Administrator/Downloads/OpenCV-MinGW-Build-OpenCV-4.5.2-x64"
)

add_executable(${PROJECT_NAME}
    "src/main.cpp"    
)

# target_include_directories(${PROJECT_NAME} PRIVATE
#     "include"
# )

find_package(Threads REQUIRED)

target_link_libraries(${PROJECT_NAME}
    opencv_core
    opencv_imgcodecs
    Threads::Threads
)


