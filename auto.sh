#!/bin/bash

while true; do
   echo "Starting autoscript... Press q to exit"
   
   echo "Taking screenshot.."
   adb shell screencap /sdcard/tmp.png
   sleep 1

   echo "Grabbing screenshot.."
   adb pull /sdcard/tmp.png tmpscreen/tmp.png
   sleep 1
   
   echo "Sending screenshot to OCR API.."
   curl -H "apikey:helloworld" --form "file=@tmpscreen/tmp.png" --form "language=eng" --form "isOverlayRequired=true" https://api.ocr.space/Parse/Image -o tmpscreen/tmpocr.txt 
   wait
   
   echo "Cleaning up result with regex.."
   python3 regex.py >> finished.txt
   echo -e "\e[32m DONE - REPEATING UNTIL STOPPED.. \e[0m"
   read -n 1 -t 1 input
   
   if [[ $input = "q" ]] || [[ $input = "Q" ]] 
   then
      echo 
      break
   fi
done
