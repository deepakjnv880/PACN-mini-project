#Author - Deepak kumar
#Enrollment number - B17039

import socket as sock
import select
import time
from datetime import datetime
import sys
import csv

if __name__ == "__main__":
    s = sock.socket(sock.AF_INET, sock.SOCK_DGRAM)
    s.bind(('0.0.0.0', 3336))
    buff=1000000
    timeout=5
    total_byte=0
    start = time.time()
    while True:
        ready = select.select([s], [], [], timeout)
        if ready[0]:
            data, addr = s.recvfrom(buff)
            total_byte+=len(data)
            # print(addr,"===",total_byte)
            # print(data)
        else:
            print("Finish!")
            break

    end=time.time()
    l=[sys.argv[1][:-2],sys.argv[2][:-4],sys.argv[3][:-1],sys.argv[4],(total_byte/((end-start-timeout)*1000000))]

    with open("log.csv", "a") as fp:
        wr = csv.writer(fp, dialect='excel')
        wr.writerow(l)

    f = open("log.txt", "a")
    f.write(str(datetime.now())+" == "+str(end-start-timeout)+"Seconds == "+str(total_byte)+"BYTES == "+str((total_byte/((end-start-timeout)*1000000)))+"MB/s\n")
    f.close()
