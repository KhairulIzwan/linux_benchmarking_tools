#!/usr/bin/env bash

# -------------------------------------------------

# Usage: Install OpenVINO + OpenCV dependencies
# Author: Khairul Izwan Bin Kamsani (wansnap@gmail.com)

# References: 
# https://www.pyimagesearch.com/2019/04/08/openvino-opencv-and-movidius-ncs-on-the-raspberry-pi/
# https://www.pyimagesearch.com/2018/05/28/ubuntu-18-04-how-to-install-opencv/
# https://www.pyimagesearch.com/2018/09/19/pip-install-opencv/
# https://docs.openvinotoolkit.org/latest/openvino_docs_install_guides_installing_openvino_linux.html

# -------------------------------------------------

# Clear the screen
clear

echo -e "Install the Intel® Distribution of OpenVINO™ Toolkit Core Components..."
echo -e "Version: 2020.3.341"

echo -e "Download and unpack OpenVINO..."
cd ~
# If you have a previous version of the Intel Distribution of OpenVINO toolkit 
# installed, rename or delete these two directories:
rm -rf ~/inference_engine_samples_build
rm -rf ~/openvino_models

# Downloading the Intel Distribution of OpenVINO toolkit for Linux* package file
wget https://registrationcenter-download.intel.com/akdlm/irc_nas/17276/l_openvino_toolkit_p_2020.3.341.tgz

# Unpack the .tgz file
tar -xvzf l_openvino_toolkit_p_2020.3.341.tgz

# Rename it
mv l_openvino_toolkit_p_2020.3.341 openvino

cd ~/openvino

# Installation
sudo ./install.sh
