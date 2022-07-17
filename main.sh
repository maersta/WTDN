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
echo -e " 4. OCR latest screenshot"
echo -e "\n"
echo -e " 5. Clear tmp data and refresh"
echo -e "\n"
echo -e " 6. Run 100% auto mode - BETA!"
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

if [ $choice == 4 ]
then
clear
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m WTDN v1.0 - BY MAERSTA          \e[0m"
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
echo " Calling the OCR API using curl.. "
echo -e "\n"
curl -H "apikey:helloworld" --form "file=@tmpscreen/result.png" --form "language=eng" --form "isOverlayRequired=true" https://api.ocr.space/Parse/Image -o tmpscreen/tmpocr.txt 
fi
wait

if [ $choice == 5 ]
then
clear
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m WTDN v1.0 - BY MAERSTA          \e[0m"
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
echo " Removing tmp data and images.. "
echo -e "\n"
rm tmpscreen/tmpocr.txt
rm tmpscreen/result.png
fi
wait

if [ $choice == 6 ]
then
clear
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\e[1;32m WTDN v1.0 - BY MAERSTA          \e[0m"
echo -e "\e[32m 000000000000000000000000000000000000000000000000\e[0m"
echo -e "\n"
echo " Running the full auto script"
echo -e "\n"
sudo bash auto.sh
fi
wait
