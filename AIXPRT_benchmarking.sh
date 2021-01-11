#!/usr/bin/env bash

# -------------------------------------------------

# Usage: Installing AIXPRT Benchmarking Tools on Linux (Ubuntu)
# Author: Khairul Izwan Bin Kamsani (wansnap@gmail.com)

# References: 
# https://www.cyberciti.biz/faq/hello-world-bash-shell-script/
# https://unix.stackexchange.com/questions/24721/how-to-compare-to-floating-point-number-in-a-shell-script
# https://www.tecmint.com/check-linux-cpu-information/
# https://linuxize.com/post/bash-exit/
# https://linuxize.com/post/bash-case-statement/
# https://tldp.org/LDP/abs/html/comparison-ops.html
# https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux_benchmarking_tools
# https://askubuntu.com/questions/86849/how-to-unzip-a-zip-file-from-the-terminal
# https://linuxize.com/post/get-cpu-information-on-linux/

# https://github.com/BenchmarkXPRT/Public-AIXPRT-Resources/blob/master/Installation%20readmes/AIXPRT%20OpenVINO%20Ubuntu%20Readme.md

# -------------------------------------------------

# Clear the screen
clear

# Define bash shell variable
# Avoid spaces around the assignment operator (=)
Distributor_ID="$(lsb_release -i)"
Description="$(lsb_release -d)"
Release="$(lsb_release -sr)"
Codename="$(lsb_release -c)"

#echo -e "$Distributor_ID"
#echo -e "$Description"
#echo -e "$Release"
#echo -e "$Codename"

# ANSI Color Code
NC='\033[0m' # No Color
BLACK='\033[0;30m'
DARKGRAY='\033[1;30m'
RED='\033[0;31m'
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

# Selection either installing new AIXPRT benchmark packages or
# running the benchmark
echo -e "Running:"
echo -e "[1] Installing NEW AIXPRT Benchmark Packages"
echo -e "[2] Run the Benchmark Packages"
echo -n "[1] / [2]:?"

read selectionGuide

case $selectionGuide in

	1)
		echo -e "${GREEN}Running NEW AIXPRT Benchmark Packages${NC}"
		bash download_AIXPRT.sh
		;;
		
	2)
		echo -e "${GREEN}Toolkits:${NC}"
		echo -e "[1]  Intel OpenVINO"
		echo -e "[2]  TensorFlow"
		echo -e "[3]  NVIDIA TensorRT"
		echo -e "[4]  MXNet"
		echo -n "Which Toolkits to be running? [1/2/3/4]:"

		read toolkitSelection

		echo -n "AIXPRT test packages to be installed is "
		
		case $toolkitSelection in

			1)
				echo -e ""
				echo -e "${GREEN}[1]  Intel OpenVINO${NC}"
				
				# TODO: Check the folder exist?
				cd AIXPRT_1.0_OpenVINO_Ubuntu/AIXPRT/Harness
				sudo python3 index.py
				;;
			2)
				echo -e ""
				echo -e "${GREEN}[2]  TensorFlow${NC}"
				
				# TODO: Check the folder exist?
				cd AIXPRT_1.0_Tensorflow_Ubuntu/AIXPRT/Harness
				sudo python3 index.py
				;;
			3)
				echo -e ""
				echo -e "${GREEN}[3]  NVIDIA TensorRT${NC}"
				
				# TODO: Check the folder exist?
				cd AIXPRT_1.0_TensorRT_Ubuntu/AIXPRT/Harness
				sudo python3 index.py
				;;
			4)
				echo -e ""
				echo -e "${GREEN}[4]  MXNet${NC}"
				
				# TODO: Check the folder exist?
				cd AIXPRT_1.0_MXNet_Ubuntu/AIXPRT/Harness
				sudo python3 index.py
				;;
			*)
				echo -e ""
				echo -e "${RED}Not in selection. Process DIED!${NC}"
#				exit
				;;
		esac
		;;
		
	*)
		echo -e "${RED}Not in selection. Process DIED!${NC}"
		exit
		;;
esac

# TODO
./AIXPRT_benchmarking.sh
