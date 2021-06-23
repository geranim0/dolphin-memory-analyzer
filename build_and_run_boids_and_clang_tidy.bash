#!/bin/bash

./build.xsh --build_dir dolphin-memory-analyzer --build_missing_conan --build_type Release

if [ $? -ne 0 ]; then
echo Compilation failed
else
echo Compilation success, running dolphin-memory-analyzer
(cd dolphin-memory-analyzer/build/Release/bin/ ; ./dolphin-memory-analyzer)
fi