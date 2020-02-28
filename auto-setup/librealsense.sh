#!/bin/bash

yes | sudo apt update
yes | sudo apt -y full-updrade
yes | sudo apt -y install python3-dev python3-pip git 
yes | sudo apt -y install libssl-dev libusb-1.0-0-dev pkg-config libgtk-3-dev
yes | pip3 install numpy opencv-python  matplotlib serial
yes | cd ~
yes | git clone https://github.com/IntelRealSense/librealsense.git
yes | cd librealsense
yes | sudo ./scripts/patch-realsense-ubuntu-xenial-joule.sh
yes | mkdir build && cd build
yes | cmake ../ -DCMAKE_BUILD_TYPE=Release -DBUILD_EXAMPLES=true
yes | sudo make install
yes | pip3 install pyrealsense2
yes | rm -rf ~/librealsense