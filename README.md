opencv-playground
=================
~~Work-in-progress~~
Fully working

### Prerequisites
1. Download prebuilt OpenCV
    - [huihut/OpenCV-MinGW-Build: 👀 MinGW 32bit and 64bit version of OpenCV compiled on Windows. Including OpenCV 3.3.1, 3.4.1, 3.4.1-x64, 3.4.5, 3.4.6, 3.4.7, 3.4.8-x64, 3.4.9, 4.0.0-alpha-x64, 4.0.0-rc-x64, 4.0.1-x64, 4.1.0, 4.1.0-x64, 4.1.1-x64, 4.5.0-with-contrib, 4.5.2-x64](https://github.com/huihut/OpenCV-MinGW-Build)
    
### Notes
- `winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1` is used here, it can be downloaded from [brechtsanders/winlibs_mingw: winlibs standalone build of GCC compiler and MinGW-w64](https://github.com/brechtsanders/winlibs_mingw), the version should follow what builds the opencv library
- Since opencv is built as dlls normally, this project should not statically link gcc runtime, because opencv need them too
