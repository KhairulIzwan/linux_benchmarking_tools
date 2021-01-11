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

echo -e "Install External Software Dependencies..."

cd /opt/intel/openvino/install_dependencies
sudo -E ./install_openvino_dependencies.sh
