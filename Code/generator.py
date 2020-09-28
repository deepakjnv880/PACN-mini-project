#Author - Deepak kumar
#Enrollment number - B17039

import random
import os
n=int(input("Enter the  size of file in byte : "))
file_name=''
if(n<1000):
	filename=str(int(n))+'B.txt'
elif(n<1000000 and n>=1000):
	filename=str(int(n/1000))+'KB.txt'
elif(n<1000000000 and n>=1000000):
	filename=str(int(n/1000000))+'MB.txt'
elif(n<1000000000000 and n>=1000000000):
	filename=str(int(n/1000000000))+'GB.txt'
file = open(filename, "w")
file.close()
file = open(filename, "a")
#else if(n<1000) filename=str(n)+'B.txt'
for i in range(n):
    file.write(chr(random.randrange(0,127)))
file.close()
