#!/bin/bash

clear
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m WTDN v1.0 - BY MAERSTA          \e[0m"
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
echo -e " 1. Start ADB daemon"
echo -e "\n"
echo -e " 2. Do screenshot"
echo -e "\n"
echo -e " 3. Pull screenshot from device to this device"
echo -e "\n"
read -p " Enter the number of choice: " choice
echo -e "\e[32m ------------------------------------------------\e[0m"


if [ $choice == 1 ]
then
clear
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m WTDN v1.0 - BY MAERSTA          \e[0m"
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
echo " Starting the ADB daemon.."
echo -e "\n"
adb devices
fi
wait

if [ $choice == 2 ]
then
clear
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m WTDN v1.0 - BY MAERSTA          \e[0m"
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
echo " Making screenshot on adb device"
echo -e "\n"
adb shell screencap /sdcard/tmp.png
fi
wait

if [ $choice == 3 ]
then
clear
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m WTDN v1.0 - BY MAERSTA          \e[0m"
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
echo " Pulling the screenshot from adb device"
echo -e "\n"
adb pull /sdcard/tmp.png tmpscreen/result.png
fi
wait
