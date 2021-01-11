#!/usr/bin/env bash

# -------------------------------------------------

# Usage: Install OpenVINO + OpenCV dependencies
# Author: Khairul Izwan Bin Kamsani (wansnap@gmail.com)

# References: 
# https://www.pyimagesearch.com/2019/04/08/openvino-opencv-and-movidius-ncs-on-the-raspberry-pi/
# https://www.pyimagesearch.com/2018/05/28/ubuntu-18-04-how-to-install-opencv/
# https://www.pyimagesearch.com/2018/09/19/pip-install-opencv/
# https://docs.openvinotoolkit.org/latest/openvino_docs_install_guides_installing_openvino_linux.html
# https://docs.openvinotoolkit.org/2020.3/_docs_install_guides_installing_openvino_linux.html

# -------------------------------------------------

# Clear the screen
clear

echo -e "Set the Environment Variables..."

echo -e "\n# OpenVINO" >> ~/.bashrc
echo "source /opt/intel/openvino/bin/setupvars.sh" >> ~/.bashrc
source ~/.bashrc

echo -e "Configure the Model Optimizer..."
cd /opt/intel/openvino/deployment_tools/model_optimizer/install_prerequisites
sudo ./install_prerequisites.sh

echo -e "Run the Verification Scripts to Verify Installation..."
cd /opt/intel/openvino/deployment_tools/demo

echo -e "Run the Image Classification verification script:"
echo -e ""
echo -e "Please type:"

echo -e ""
echo -e "This verification script downloads a SqueezeNet model, uses the Model Optimizer to convert the model to the .bin and .xml Intermediate Representation (IR) files. The Inference Engine requires this model conversion so it can use the IR as input and achieve optimum performance on Intel hardware."
echo -e "This verification script builds the Image Classification Sample Async application and run it with the car.png image located in the demo directory. When the verification script completes, you will have the label and confidence for the top-10 categories."

echo -e ""
cd /opt/intel/openvino/deployment_tools/demo
./demo_squeezenet_download_convert_run.sh

echo -e ""
echo -e "and then..."
echo -e ""
echo -e "Please type:"

echo -e ""
echo -e "This script downloads three pre-trained model IRs, builds the Security Barrier Camera Demo application, and runs it with the downloaded models and the car_1.bmp image from the demo directory to show an inference pipeline. The verification script uses vehicle recognition in which vehicle attributes build on each other to narrow in on a specific attribute."
echo -e "First, an object is identified as a vehicle. This identification is used as input to the next model, which identifies specific vehicle attributes, including the license plate. Finally, the attributes identified as the license plate are used as input to the third model, which recognizes specific characters in the license plate."
echo -e "When the verification script completes, you will see an image that displays the resulting frame with detections rendered as bounding boxes, and text"

echo -e ""
cd /opt/intel/openvino/deployment_tools/demo
./demo_security_barrier_camera.sh
