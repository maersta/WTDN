#!/bin/bash
clear
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m WTDN Installer v1.0 - BY MAERSTA          \e[0m"
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
echo -e " Be sure to run the install as root!"
read -p " Are you sure you want to install WTDN? y or n" choice

if [ $choice == y ]
then
clear
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m WTDN Installer v1.0 - BY MAERSTA          \e[0m"
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
echo " Installing ADB tools.."
echo -e "\n"
apt-get update -y && apt-get upgrade -y
apt-get install -y adb
mkdir tmpscreen
clear
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m WTDN Installer v1.0 - BY MAERSTA          \e[0m"
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
read -p " Installation completed! Press ctrl+c to exit and then sudo bash main.sh" completed
fi
clear
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m WTDN Installer v1.0 - BY MAERSTA          \e[0m"
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
echo " ERROR - WTDN was NOT installed! Remember to run with as root"
