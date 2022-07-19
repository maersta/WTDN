import cv2

import numpy as np

import requests

import io

import json

woord = input("Word to look for: ")

img = cv2.imread("13.png")

height, width, _ = img.shape


# Cutting image

# roi = img[0: height, 400: width]

roi = img


# Ocr

url_api = "https://api.ocr.space/parse/image"

_, compressedimage = cv2.imencode(".jpg", roi, [1, 90])

file_bytes = io.BytesIO(compressedimage)


result = requests.post(url_api,

              files = {"screenshot.jpg": file_bytes},

              data = {"apikey": "helloworld",

                      "language": "eng"})


result = result.content.decode()

result = json.loads(result)


parsed_results = result.get("ParsedResults")[0]

text_detected = parsed_results.get("ParsedText")

# print(text_detected.upper())

# cv2.imshow("roi", roi)

# cv2.imshow("Img", img)

# cv2.waitKey(0)

fullstring = text_detected.upper()
substring = woord

if fullstring != None and substring in fullstring:
 print("Found!")
else:
 print("Not found!")
