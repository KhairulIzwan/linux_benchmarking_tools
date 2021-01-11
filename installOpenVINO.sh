#!/usr/bin/env bash

# -------------------------------------------------

# Usage: Install OpenVINO + OpenCV dependencies
# Author: Khairul Izwan Bin Kamsani (wansnap@gmail.com)

# References: 
# https://www.pyimagesearch.com/2019/04/08/openvino-opencv-and-movidius-ncs-on-the-raspberry-pi/

# -------------------------------------------------

# Clear the screen
clear

echo -e "Let’s update our system..."
sudo apt-get update && sudo apt-get upgrade -y

echo -e "Install developer tools including CMake..."
sudo apt-get install build-essential cmake unzip pkg-config

echo -e "Install a selection of image and video libraries..."
sudo apt-get install libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev
