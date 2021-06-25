#!/bin/bash

sudo apt install build-essential cmake checkinstall ccache \
libgtk-3-dev libjpeg-dev libpng++-dev
cd "$HOME" || exit
git clone --depth=1 https://github.com/opencv/opencv.git
cd opencv/ || exit
mkdir build && cd build || exit
cmake ..
make -j "$(nproc)"
sudo make install