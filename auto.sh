#!/bin/bash

while true; do
   echo "Starting autoscript... Press q to exit"
adb shell screencap /sdcard/tmp.png
   sleep 1
adb pull /sdcard/tmp.png tmpscreen/result.png
   sleep 1
curl -H "apikey:helloworld" --form "file=@tmpscreen/result.png" --form "language=eng" --form "isOverlayRequired=true" https://api.ocr.space/Parse/Image -o tmpscreen/tmpocr.txt 
python3 scripts/regex.py >> finished.txt
   read -n 1 -t 1 input
   
   if [[ $input = "q" ]] || [[ $input = "Q" ]] 
   then
      echo 
      break
   fi
done
