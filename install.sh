#!/bin/bash

export BLUE='\033[1;94m'
export GREEN='\033[1;92m'
export RED='\033[1;91m'
export YELLOW='\033[1;93m'
export RESETCOLOR='\033[1;00m'

# Run this script as sudo or end 
if [[ $UID != 0 ]]; then
	printf "$RED[$YELLOW!$RED] Please, run this script as $REDsudo\n"
	printf "$RED[$YELLOW!$RED] sudo $0 $*\n"
	# Exit error code
	exit 1
fi	
date=$(date +%c)
clear
printf "$BLUE _           _        _ _             \n"
printf "$BLUE(_)         | |      | | |            \n"
printf "$BLUE _ _ __  ___| |_ __ _| | | ___ _ __   \n"
printf "$BLUE| | '_ \/ __| __/ _' | | |/ _ \ '__|  \n"
printf "$BLUE| | | | \__ \ || (_| | | |  __/ |     \n"
printf "$BLUE|_|_| |_|___/\__\__,_|_|_|\___|_|     \n"
printf "\n"

echo -e -n "$BLUE[$GREEN+$BLUE] Enter current user : \e[0m"
read current_user
echo -e "$GREEN----------------------------------------\e[0m"
sleep 1
printf "$BLUE[$GREEN*$BLUE] System update, please wait ... \e[0m\n"
sudo apt-get update &>/dev/null
echo -ne -e '\033[1;92m#####               (33%)\r\e[0m'
sleep 1
echo -ne -e '\033[1;92m###########         (66%)\r\e[0m'
sleep 1
echo -ne -e '\033[1;92m################## (100%)\r\e[0m\n'
sleep 1
printf "$BLUE[$GREEN!$BLUE] System update complete...\e[0m\n"
echo -e "$GREEN----------------------------------------\e[0m"

# Checking dependencies
printf "$BLUE[$GREEN*$BLUE] I requiere git ... dowloading\e[0m\n"
sudo apt-get install -y git &>/dev/null
echo -ne -e '\033[1;92m#####               (33%)\r\e[0m'
sleep 1
echo -ne -e '\033[1;92m###########         (66%)\r\e[0m'
sleep 1
echo -ne -e '\033[1;92m################## (100%)\r\e[0m\n'
sleep 1
printf "$BLUE[$GREEN!$BLUE] Git installed ! \e[0m\n"
echo -e "$GREEN----------------------------------------\e[0m"
sleep 2

printf "$BLUE[$GREEN*$BLUE] I requiere macchanger ... downloading\e[0m\n"
sudo apt-get install -y macchanger &>/dev/null
echo -ne -e '\033[1;92m#####               (33%)\r\e[0m'
sleep 1
echo -ne -e '\033[1;92m###########         (66%)\r\e[0m'
sleep 1
echo -ne -e '\033[1;92m################## (100%)\r\e[0m\n'
sleep 1
printf "$BLUE[$GREEN!$BLUE] Macchanger installed ! \e[0m\n"
echo -e "$GREEN----------------------------------------\e[0m"
sleep 2

printf "$BLUE[$GREEN*$BLUE] I requiere Wireshark ... dowloading\e[0m\n"
sudo apt-get install -y wireshark &>/dev/null
echo -ne -e '\033[1;92m#####               (33%)\r\e[0m'
sleep 1
echo -ne -e '\033[1;92m##########          (66%)\r\e[0m'
sleep 1
echo -ne -e '\033[1;92m################## (100%)\r\e[0m\n'
sleep 1
printf "$BLUE[$GREEN!$BLUE] Wireshark installed ! \e[0m\n"
echo -e "$GREEN----------------------------------------\e[0m"
sleep 2

printf "$BLUE[$GREEN*$BLUE] I requiere Alien ... downloading\e[0m\n"
sudo apt-get install -y alien &>/dev/null
echo -ne -e '\033[1;92m#####               (33%)\r\e[0m'
sleep 1
echo -ne -e '\033[1;92m##########          (66%)\r\e[0m'
sleep 1
echo -ne -e '\033[1;92m################## (100%)\r\e[0m\n'
sleep 1
printf "$BLUE[$GREEN!$BLUE] Alien installed ! \e[0m\n"
echo -e "$GREEN----------------------------------------\e[0m"
sleep 2

printf "$BLUE[$GREEN*$BLUE] I requiere UFW ... downloading\e[0m\n"
sudo apt-get install -y ufw &>/dev/null
echo -ne -e '\033[1;92m#####               (33%)\r\e[0m'
sleep 1
echo -ne -e '\033[1;92m##########          (66%)\r\e[0m'
sleep 1
echo -ne -e '\033[1;92m################## (100%)\r\e[0m\n'
sleep 1
printf "$BLUE[$GREEN!$BLUE] UFW installed ! \e[0m\n"
echo -e "$GREEN----------------------------------------\e[0m"
sleep 1
printf "\n"

# Making directories 
if [ -d /home/$current_user/Octopus/Network-Infos ]; then
printf "$RED[$YELLOW!$RED] Directory $YELLOW'Network-Infos'$RED already exist ! \e[0m\n"
else
printf "$BLUE[$GREEN*$BLUE] Making of $GREEN'Network-Infos'$BLUE ... \e[0m\n"
cd /home/$current_user/Octopus/ &>/dev/null
sudo mkdir Network-Infos/ &>/dev/null
sleep 1
printf "$BLUE[$GREEN!$BLUE] Done at $date \e[0m\n"
fi

if [ -d /home/$current_user/Octopus/Network-Scan ]; then
printf "$RED[$YELLOW!$RED] Directory $YELLOW'Network-Scan'$RED already exist ! \e[0m\n"
else
printf "$BLUE[$GREEN*$BLUE] Making of $GREEN'Network-Scan'$BLUE ...\e[0m\n"
cd /home/$current_user/Octopus/ &>/dev/null
sudo mkdir Network-Scan/ &>/dev/null
sleep 1
printf "$BLUE[$GREEN!$BLUE] Done at $date \e[0m\n"
fi

if [ -d /home/$current_user/Octopus/Web-Scan ]; then
printf "$RED[$YELLOW!$RED] Directory $YELLOW'Web-Scan'$RED already exist ! \e[0m\n"
else
printf "$BLUE[$GREEN*$BLUE] Making of $GREEN'Web-Scan'$BLUE ...\e[0m\n"
cd /home/$current_user/Octopus/ &>/dev/null
sudo mkdir Web-Scan/ &>/dev/null
sleep 1
printf "$BLUE[$GREEN!$BLUE] Done at $date \e[0m\n"
fi

sleep 2
printf "$BLUE[$GREEN+$BLUE] $GREEN Installation complete ! \e[0m\n\n"

