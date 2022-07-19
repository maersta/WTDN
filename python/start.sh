#!/bin/bash
# WTDN - Made by Maersta
while true; do

   adb shell screencap /sdcard/tmp.png
   sleep 1

   adb pull /sdcard/tmp.png tmpscreen/tmp.png
   sleep 1
   
   sudo python3 ocr.py
   sleep 3
   
   echo -e "\e[32m  REPEATING - PRESS Q TO STOP \e[0m"
   read -n 1 -t 1 input
   
   if [[ $input = "q" ]] || [[ $input = "Q" ]] 
   then
      clear
      echo 
      break
   fi
done
