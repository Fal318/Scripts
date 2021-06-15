#!/bin/bash

sudo apt install build-essential cmake checkinstall ccache \
libgtk-3-dev libjpeg-dev libpng++-dev
cd ~/
git clone --depth=1 https://github.com/opencv/opencv.git
cd opencv/
mkdir build && cd build
cmake ..
make -j($(nproc))
sudo make install