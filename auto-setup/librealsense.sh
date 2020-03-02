#!/bin/bash
sudo apt update
sudo apt -y full-upgrade
sudo apt -y install python3-dev python3-pip git 

pip3 install numpy opencv-python  matplotlib serial

sudo apt-key adv --keyserver keys.gnupg.net --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE

sudo add-apt-repository "deb http://realsense-hw-public.s3.amazonaws.com/Debian/apt-repo bionic main" -u

sudo apt -y install librealsense2-dkms librealsense2-utils librealsense2-dev librealsense2-dbg
pip3 install pyrealsense2
