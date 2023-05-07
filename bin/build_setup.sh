#!/bin/bash
mkdir -p build/rel build/debug
cmake -S . -B build/rel -DCMAKE_BUILD_TYPE=Release
cmake -S . -B build/debug -DCMAKE_BUILD_TYPE=Debug

