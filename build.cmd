REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOAD_DIR=%USERPROFILE%\Downloads
set DOWNLOAD_DIR_LINUX=%DOWNLOAD_DIR:\=/%
SET PATH=%DOWNLOAD_DIR%\PortableGit\bin;%DOWNLOAD_DIR%\mingw64;%DOWNLOAD_DIR%\mingw64\bin;%DOWNLOAD_DIR%\cmake-3.22.0-rc1-windows-x86_64\bin;%PATH%
cmake.exe -G"MinGW Makefiles" -DCMAKE_CXX_COMPILER="%DOWNLOAD_DIR_LINUX%/LLVM-13.0.0-win64/bin/clang++.exe" -DCMAKE_C_COMPILER="%DOWNLOAD_DIR_LINUX%/LLVM-13.0.0-win64/bin/clang.exe" -B./build
cd build

SET PATH=%PATH%;%USERPROFILE%\Downloads\OpenCV-MinGW-Build-OpenCV-4.5.2-x64\x64\mingw\bin

:rebuild
cls
mingw32-make.exe
pause
goto rebuild