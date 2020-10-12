#!/bin/bash

#Web Enumeration using Nikto & Dirb
#If needed you can add up GoBuster command script.  
#Before executing set permission - chmod +x webenum.sh
#Usage - ./webenum.sh <Target_IP>:<PORT> 
#Example - ./webenum.sh 10.10.10.10:10000

#Coded by Saheel Fal Desai. 2020-10-12 20:44:33
#For queries contact - imsaheeldesai@gmail.com	



if [ -z "$1" ]
	then
		echo "Error, Please provide host to enumeration"
		exit
	else
		echo "Running Nikto against $1"
		nikto -h $1
		echo " "
		echo "Running dirb against $1"
		dirb http://$1 /usr/share/wordlists/dirb/common.txt	#Optional; if customized wordlist file enter the directory path. 
fi


