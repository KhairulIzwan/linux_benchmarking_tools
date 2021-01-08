#!/usr/bin/env bash

# -------------------------------------------------

# Usage: Installing AIXPRT on Linux (Ubuntu)
# Author: Khairul Izwan Bin Kamsani (wansnap@gmail.com)

# References: 
# https://www.cyberciti.biz/faq/hello-world-bash-shell-script/
# https://unix.stackexchange.com/questions/24721/how-to-compare-to-floating-point-number-in-a-shell-script
# https://www.tecmint.com/check-linux-cpu-information/
# https://linuxize.com/post/bash-exit/
# https://linuxize.com/post/bash-case-statement/

# -------------------------------------------------

# Clear the screen
clear

# Define bash shell variable
# Avoid spaces around the assignment operator (=)
Distributor_ID="$(lsb_release -i)"
Description="$(lsb_release -d)"
Release="$(lsb_release -sr)"
Codename="$(lsb_release -c)"

# Welcome greeting
echo -e "Welcome, $(whoami)!"
#echo -e "$(lsb_release -i)"
#echo -e "$Release"

# System checking
# TODO: Checking others (min) system requirements: OS, CPU, GPU, VPU
if [ ${Release##*.} -ge 18 ]
then
	echo -e "Your machine meet the minimum system requirements:"
	echo -e "$Distributor_ID"
	echo -e "$Description"
	echo -e "$Release"
	echo -e "$Codename"
else
	echo -e "Your machine NOT meet the minimum system requirements:"
	echo -e "$Distributor_ID"
	echo -e "$Description"
	echo -e "$Release"
	echo -e "$Codename"
	
	exit
fi

# Install option
echo -e "[1]  Intel OpenVINO"
echo -e "[2]  TensorFlow"
echo -e "[3]  NVIDIA TensorRT"
echo -e "[4]  MXNet"
echo -e "[5]  All"
echo -n "Which AIXPRT test packages to be installed? [1/2/3/4/5]:"

read option

echo -n "AIXPRT test packages to be installed is "

case $option in

	1)
		echo -e "[1] Intel OpenVINO"
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_OpenVINO_Ubuntu.zip
		;;
		
	2)
		echo -e "[2] TensorFlow"
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_Tensorflow_Ubuntu.zip
		;;
		
	3)
		echo -e "[3] NVIDIA TensorRT"
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_TensorRT_Ubuntu.zip
		;;
		
	4)
		echo -e "[4] MXNet"
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_MXNet_Ubuntu.zip
		;;
		
	5)
		echo -e "[5] All"
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_OpenVINO_Ubuntu.zip
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_Tensorflow_Ubuntu.zip
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_TensorRT_Ubuntu.zip
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_MXNet_Ubuntu.zip
		;;
		
	*)
		echo -n "Not listed, Installation halt!"
		exit
		;;
esac
