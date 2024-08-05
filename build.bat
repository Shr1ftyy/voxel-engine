@echo off

if "%1" == "release" (
    cmake -S . -B build
    cmake --build build --config Release
    if %errorlevel% equ 0 (
        call "build\Release\voxel-engine.exe"
    )
) else (
    cmake -S . -B build
    cmake --build build
    if %errorlevel% equ 0 (
        call "build\Debug\voxel-engine.exe"
    )
)