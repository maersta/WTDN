import re
import sys
print sys.argv[0] 
print sys.argv[1] 
print sys.argv[2]
with open ('tmpscreen/tmp.txt', 'r' ) as f:
    content = f.read()
    content_new = re.sub('\w+', r'HORAN', content, flags = re.M)

f = open("tmpscreen/final.txt", "w")
f.write(content_new)
f.close()
