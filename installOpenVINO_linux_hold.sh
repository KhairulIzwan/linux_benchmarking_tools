#!/usr/bin/env bash

# -------------------------------------------------

# Usage: Install OpenVINO + OpenCV dependencies
# Author: Khairul Izwan Bin Kamsani (wansnap@gmail.com)

# References: 
# https://www.pyimagesearch.com/2019/04/08/openvino-opencv-and-movidius-ncs-on-the-raspberry-pi/

# -------------------------------------------------

# Clear the screen
clear

echo -e "Step #1: Install OpenCV dependencies on Ubuntu 18.04..."

echo -e "Let’s update our system..."
sudo apt-get update && sudo apt-get upgrade -y

echo -e "Installing developer tools..."
sudo apt-get install build-essential cmake unzip pkg-config

echo -e "Install an image I/O packages will allow OpenCV to work with image files..."
sudo apt-get install libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install libjasper-dev

# If receive an error about libjasper-dev  being missing then follow the following instructions:
sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
sudo apt update
sudo apt install libjasper1 libjasper-dev

echo -e "Install an video I/O packages will allow OpenCV to work with image files..."
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev

echo -e "Let’s install GTK, our GUI backend..."
sudo apt-get install libgtk-3-dev

echo -e "Install packages which contain numerical optimizations for OpenCV..."
sudo apt-get install libatlas-base-dev gfortran

echo -e "Install the Python 3 development headers..."
sudo apt-get install python3-dev

echo -e "Install pip, a Python Package Manager..."
cd ~
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py

echo -e "Install OpenCV to your Ubuntu system with pip..."
sudo pip install opencv-contrib-python

echo -e "Download and unpack OpenVINO..."
cd ~
wget https://registrationcenter-download.intel.com/akdlm/irc_nas/17276/l_openvino_toolkit_p_2020.3.341.tgz
tar -xvzf l_openvino_toolkit_p_2020.3.341.tgz
mv l_openvino_toolkit_runtime_raspbian_p_2020.1.023 openvino

rm -rf ~/inference_engine_samples_build
rm -rf ~/openvino_models

cd openvino


echo -e "\n# virtualenv and virtualenvwrapper" >> ~/.bashrc
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
