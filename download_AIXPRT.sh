#!/usr/bin/env bash
# -------------------------------------------------
# Usage: Installing AIXPRT on Linux (Ubuntu)
# Author: Khairul Izwan Bin Kamsani (wansnap@gmail.com)

# References: 
# https://www.cyberciti.biz/faq/hello-world-bash-shell-script/
# https://unix.stackexchange.com/questions/24721/how-to-compare-to-floating-point-number-in-a-shell-script
# https://www.tecmint.com/check-linux-cpu-information/
# https://linuxize.com/post/bash-exit/

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
if [ ${Release##*.} -le 18 ]
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
echo -e "Which AIXPRT test packages to be installed? [1/2/3/4/5]:"

read option

if [ $option -le 18 ]
then
	echo -e "Your machine meet the minimum system requirements:"
	echo -e "$Distributor_ID"
	echo -e "$Description"
	echo -e "$Release"
	echo -a "$Codename"
else
	echo -e "Your machine NOT meet the minimum system requirements:"
	echo -e "$Distributor_ID"
	echo -e "$Description"
	echo -e "$Release"
	echo -e "$Codename"
	
	exit
fi
## Downloading the AIXPRT
#echo -e "Downloading the AIXPRT..."
#wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_OpenVINO_Ubuntu.zip
