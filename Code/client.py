#Author - Vinay kumar
#Enrollment number - B17068

import socket as sock
import time

if __name__ == "__main__":
    s = sock.socket(sock.AF_INET, sock.SOCK_DGRAM)
    s.connect(('192.0.2.1', 3336))
    buff=10000 #100 KB we can't send "message too long"
    f = open('100MB.txt', "r")
    data = f.read(buff)
    while(data):
        start = time.time()
        if(s.send(bytes(data,'utf-8'))):
            end = time.time()
            # print("Sending time is ==>",end-start)
            data = f.read(buff)

    s.close()
    f.close()
