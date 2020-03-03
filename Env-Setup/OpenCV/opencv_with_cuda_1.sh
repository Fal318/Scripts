#!/bin/bash

sudo apt update && sudo apt upgrade
sudo ubuntu-drivers autoinstall

sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub

wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.1.168-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804_10.1.168-1_amd64.deb
sudo apt update 

sudo apt install cuda cuda-drivers

sudo echo "export PATH=\"/usr/local/cuda/bin:$PATH\"
export LD_LIBRARY_PATH=\"/usr/local/cuda/lib64:$LD_LIBRARY_PATH\"" >> ~/.bashrc

sudo reboot