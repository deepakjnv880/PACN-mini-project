#Author - Vinay kumar
#Enrollment number - B17068

from matplotlib import pyplot as plt
import csv
import os

def plot(X,Y,title,xlabel,ylabel,name):

     os.remove(name)
     print ('### Drawing graph ###\n')
     plt.title(title)

     # naming the y axis
     plt.ylabel(ylabel)
     plt.xlabel(xlabel)


     plt.plot(X, Y)

     plt.savefig(name)
     plt.clf()
     # plt.show()

if __name__ == '__main__':

     with open('log.csv', newline='') as f:
         reader = csv.reader(f)
         data = list(reader)

     # print(data)
     X1=[]
     Y1=[]
     for i in range(1,11):
          X1.append(int(data[i][0]))
          Y1.append(float(data[i][4]))
     plot(X1,Y1,'Delay vs Throughput','Delay in milliseconds','Throughput in MB/s','Delay.png')

     X2=[]
     Y2=[]
     for i in range(11,21):
          X2.append(int(data[i][1]))
          Y2.append(float(data[i][4]))
     plot(X2,Y2,'Rate vs Throughput','Rate in Mb/s','Throughput in MB/s','Rate.png')

     X3=[]
     Y3=[]
     for i in range(21,31):
          X3.append(int(data[i][2]))
          Y3.append(float(data[i][4]))
     plot(X3,Y3,'Loss vs Throughput','Loss in %','Throughput in MB/s','Loss.png')

     # X=[]
     # Y=[]
     # for i in range(31,41):
     #      X.append(int(data[i][3]))
     #      Y.append(float(data[i][4]))
     # plot(X,Y,'Number of client vs Throughput','Number of client','Throughput in MB/s','Number_of_client.png')

     # X=[1,10,40,60,70,80]
     # Y=[0.1969,0.1967,0.196,0.193,0.187,0.181]
     # plot(X,Y,'Delay vs Throughput','Delay in milliseconds','Throughput in MB/s','delay.png')
