import re
with open ('../tmpscreen/tmpocr.txt', 'r' ) as f:
    content = f.read()
    content_new = re.sub('\w+(.+):', r'', content, flags = re.M)

f = open("tmpscreen/final.txt", "w")
f.write(content_new)
f.close()
print("Done")
