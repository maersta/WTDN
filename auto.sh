#!/bin/bash
# WTDN - Made by Maersta
while true; do

   adb shell screencap /sdcard/tmp.png
   sleep 1

   adb pull /sdcard/tmp.png tmpscreen/tmp.png
   sleep 1
   
   curl -H "apikey:helloworld" --form "file=@tmpscreen/tmp.png" --form "language=eng" --form "isOverlayRequired=true" https://api.ocr.space/Parse/Image -o tmpscreen/tmp.txt 
   wait
   
   python3 regex.py >> finished.txt
   echo -e "\e[32m  REPEATING - PRESS Q TO STOP \e[0m"
   read -n 1 -t 1 input
   
   if [[ $input = "q" ]] || [[ $input = "Q" ]] 
   then
      clear
      echo 
      break
   fi
done
