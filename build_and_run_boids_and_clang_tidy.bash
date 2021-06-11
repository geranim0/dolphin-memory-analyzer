#!/bin/bash

./build.xsh --build_dir UniqueProjectName --build_missing_conan --build_type Release

if [ $? -ne 0 ]; then
echo Compilation failed
else
echo Compilation success, running UniqueProjectName
(cd UniqueProjectName/build/Release/bin/ ; ./UniqueProjectName)
fi