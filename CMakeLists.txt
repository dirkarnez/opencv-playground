cmake_minimum_required(VERSION 3.18)

# uncomment these 2 lines if using clang
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -target x86_64-pc-windows-gnu")
# set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -target x86_64-pc-windows-gnu")

# set(CMAKE_CXX_STANDARD_LIBRARIES "-static-libgcc -static-libstdc++ ${CMAKE_CXX_STANDARD_LIBRARIES}")

# set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,-Bstatic")

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(opencv-playground)

### Must set
set(OpenCV_STATIC ON)

# target_copy_libraries(target items...)
# macro(target_copy_libraries target)
#   foreach(arg IN ITEMS ${ARGN})
#     add_custom_command(
#       TARGET ${target} POST_BUILD
#       COMMAND ${CMAKE_COMMAND} -E copy_if_different $<TARGET_FILE:${arg}> $<TARGET_FILE_DIR:${target}>
#     )
#   endforeach()
# endmacro()

find_package(OpenCV CONFIG 4.6.0 EXACT REQUIRED)

add_executable(${PROJECT_NAME}
    "src/main.cpp"    
)

# target_include_directories(${PROJECT_NAME} PRIVATE
#     "include"
# )

# find_package(Threads REQUIRED)

SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static")

target_link_libraries(${PROJECT_NAME} PRIVATE ${OpenCV_LIBS})

# target_copy_libraries(${PROJECT_NAME} ${OpenCV_LIBS})
# file( COPY  "${CMAKE_CXX_COMPILER}/../libstdc++-6.dll" DESTINATION "${CMAKE_BINARY_DIR}")
# file( COPY  "${CMAKE_CXX_COMPILER}/../libgcc_s_seh-1.dll" DESTINATION "${CMAKE_BINARY_DIR}")
# file( COPY  "${CMAKE_CXX_COMPILER}/../libwinpthread-1.dll" DESTINATION "${CMAKE_BINARY_DIR}") 
    # libopencv_core
    # opencv_core 
    # opencv_flann 
    # opencv_imgproc 
    # opencv_intensity_transform 
    # opencv_ml 
    # opencv_phase_unwrapping 
    # opencv_photo 
    # opencv_plot 
    # opencv_quality opencv_reg opencv_surface_matching opencv_xphoto opencv_dnn opencv_dnn_superres opencv_features2d opencv_fuzzy opencv_hfs opencv_img_hash opencv_imgcodecs opencv_line_descriptor opencv_saliency opencv_text opencv_videoio opencv_calib3d opencv_cvv opencv_datasets opencv_highgui opencv_mcc opencv_objdetect opencv_rapid opencv_rgbd opencv_shape opencv_structured_light opencv_video opencv_videostab opencv_xfeatures2d opencv_ximgproc opencv_xobjdetect opencv_aruco opencv_bgsegm opencv_bioinspired opencv_ccalib opencv_dnn_objdetect opencv_dpm opencv_face opencv_gapi opencv_optflow opencv_stitching opencv_superres opencv_tracking opencv_stereo)


