#!/usr/bin/env bash

# -------------------------------------------------

# Usage: Install OpenVINO + OpenCV dependencies
# Author: Khairul Izwan Bin Kamsani (wansnap@gmail.com)

# References: 
# https://www.pyimagesearch.com/2019/04/08/openvino-opencv-and-movidius-ncs-on-the-raspberry-pi/

# -------------------------------------------------

# Clear the screen
clear

echo -e "Install OpenVINO + OpenCV dependencies on your Raspberry Pi..."

echo -e "Let’s update our system..."
sudo apt-get update && sudo apt-get upgrade -y

echo -e "Install developer tools including CMake..."
sudo apt-get install build-essential cmake unzip pkg-config

echo -e "Install a selection of image and video libraries..."
sudo apt-get install libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev

echo -e "Let’s install GTK, our GUI backend..."
sudo apt-get install libgtk-3-dev

echo -e "Let’s install a package which may help to reduce GTK warnings..."
sudo apt-get install libcanberra-gtk*

echo -e "Install packages which contain numerical optimizations for OpenCV..."
sudo apt-get install libatlas-base-dev gfortran

echo -e "Install the Python 3 development headers..."
sudo apt-get install python3-dev

echo -e "Download and unpack OpenVINO for your Raspberry Pi..."
cd ~
wget https://download.01.org/opencv/2020/openvinotoolkit/2020.1/l_openvino_toolkit_runtime_raspbian_p_2020.1.023.tgz
tar -xf l_openvino_toolkit_runtime_raspbian_p_2020.1.023.tgz
mv l_openvino_toolkit_runtime_raspbian_p_2020.1.023 openvino

echo -e "Configure OpenVINO on your Raspberry Pi..."

echo -e "\n# OpenVINO" >> ~/.bashrc
echo "source ~/openvino/bin/setupvars.sh" >> ~/.bashrc

source ~/.bashrc

echo -e "Configure USB rules for your Movidius NCS and OpenVINO on Raspberry Pi..."
sudo usermod -a -G users "$(whoami)"

cd ~
sh openvino/install_dependencies/install_NCS_udev_rules.sh

echo -e "Install pip, a Python Package Manager..."
cd ~
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py

echo -e "Install packages into your OpenVINO environment..."
pip install numpy
pip install "picamera[array]"
pip install imutils
