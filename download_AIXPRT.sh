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
# https://tldp.org/LDP/abs/html/comparison-ops.html
# https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux_benchmarking_tools

# -------------------------------------------------

# Clear the screen
clear

# Define bash shell variable
# Avoid spaces around the assignment operator (=)
Distributor_ID="$(lsb_release -i)"
Description="$(lsb_release -d)"
Release="$(lsb_release -sr)"
Codename="$(lsb_release -c)"

RED='\033[0;31m'
NC='\033[0m' # No Color
Black='\033[0;30m'
Dark Gray='\033[1;30m'
Red='\033[0;31m'
LIGHTRED='\033[1;31m'
GREEN='\033[0;32m'
LIGHTGREEN='\033[1;32m'
BROWN='\033[0;33m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
LIGHTBLUE='\033[1;34m'
PURPLE='\033[0;35m'
LIGHTPURPLE='\033[1;35m'
CYAN='\033[0;36m'
LIGHTCYAN='\033[1;36m'
LIGHTGRAY='\033[0;37m'
WHITE='\033[1;37m'

# Welcome greeting
echo -e "Welcome, ${RED}$(whoami)${NC}!"
#echo -e "$(lsb_release -i)"
#echo -e "$Release"

# System checking
# TODO: Checking others (min) system requirements: OS, CPU, GPU, VPU
if [ ${Release%%.*} -ge 18 ]
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
		echo -e ""
		echo -e "${GREEN}[1]  Intel OpenVINO${NC}"
		echo -e "[2]  TensorFlow"
		echo -e "[3]  NVIDIA TensorRT"
		echo -e "[4]  MXNet"
		echo -e "[5]  All"
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_OpenVINO_Ubuntu.zip
		unzip AIXPRT_1.0_OpenVINO_Ubuntu.zip
		;;
		
	2)
		echo -e ""
		echo -e "[1]  Intel OpenVINO"
		echo -e "${GREEN}[2]  TensorFlow${NC}"
		echo -e "[3]  NVIDIA TensorRT"
		echo -e "[4]  MXNet"
		echo -e "[5]  All"
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_Tensorflow_Ubuntu.zip
		unzip AIXPRT_1.0_Tensorflow_Ubuntu.zip
		;;
		
	3)
		echo -e ""
		echo -e "[1]  Intel OpenVINO"
		echo -e "[2]  TensorFlow"
		echo -e "${GREEN}[3]  NVIDIA TensorRT${NC}"
		echo -e "[4]  MXNet"
		echo -e "[5]  All"
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_TensorRT_Ubuntu.zip
		unzip AIXPRT_1.0_TensorRT_Ubuntu.zip
		;;
		
	4)
		echo -e ""
		echo -e "[1]  Intel OpenVINO"
		echo -e "[2]  TensorFlow"
		echo -e "[3]  NVIDIA TensorRT"
		echo -e "${GREEN}[4]  MXNet${NC}"
		echo -e "[5]  All"
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_MXNet_Ubuntu.zip
		unzip AIXPRT_1.0_MXNet_Ubuntu.zip
		;;
		
	5)
		echo -e ""
		echo -e "[1]  Intel OpenVINO"
		echo -e "[2]  TensorFlow"
		echo -e "[3]  NVIDIA TensorRT"
		echo -e "[4]  MXNet"
		echo -e "${GREEN}[5]  All${NC}"
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_OpenVINO_Ubuntu.zip
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_Tensorflow_Ubuntu.zip
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_TensorRT_Ubuntu.zip
		wget https://www.principledtechnologies.com/benchmarkxprt/aixprt/2019/AIXPRT_1.0_MXNet_Ubuntu.zip
		unzip AIXPRT_1.0_OpenVINO_Ubuntu.zip
		unzip AIXPRT_1.0_Tensorflow_Ubuntu.zip
		unzip AIXPRT_1.0_TensorRT_Ubuntu.zip
		unzip AIXPRT_1.0_MXNet_Ubuntu.zip
		;;
		
	*)
		echo -n "Downloading Cancelled"
		exit
		;;
esac
