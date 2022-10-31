#! /bin/bash

sudo apt install libsdl2-dev
git pull
./autogen.sh
make clean
make VERBOSE=1 CFLAGS='-I/usr/include/SDL2 -fno-strict-aliasing -flto -O3' CXXFLAGS='-I/usr/include/SDL2 -fno-strict-aliasing -flto -O3'

echo "Build Done!"
