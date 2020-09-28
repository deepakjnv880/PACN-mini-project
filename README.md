# Problem Statement
Create N+1 nodes on your Laptop where one node acts as
a server and remaining as clients.
Write Client-Server code using UDP sockets. Vary the
rate,loss and delay on the client MACVLANs and measure
the performance.
# Experiment Setup : Measurements
Send large file(100MB) from client to server.
* Throughput(MB/s) = total byte received / total time taken.  
For measuring total byte -> added all data received.  
For measuring total time -> python module time used.

# Experiment Setup : Factors
* Primary factors and their Levels  
Delay 1,5,10,20,30,40,50,60,70,80  
Rate 1,4,9,15,30,40,50,60,70,85  
Loss 1,2,5,10,15,20,25,30,40,50
* Secondary Factors  
RAM, Operating System

# Experiment Setup : Script for Automation

    ./run.sh 1ms 20mbit 2% 5;
    while [ $(ps -aef | grep server.py | wc -l) -ne 1]
    do
      sleep 1;
    done
    So on ...

# Results
* Loss vs Throughput
![Graph1](/Code/Loss.png)
* Rate vs Throughput
![Graph2](/Code/Rate.png)
* Delay vs Throughput
![Graph3](/Code/Delay.png)

# File Structure
The file structure of this repo is same as any other good project. There is a code folder, a presentation folder and generated data folder. To run the script go in code folder and run main.sh file only, all other script will be called by this itself.


# Conclusion
We have successfully conducted the experiments and concluded that
increase in loss decrease throughput and increase in delay decrease
throughput and increase in rate at client interface increase throughput.

# Contributer 
[Deepak Kumar](https://github.com/deepakjnv880)  
[Vinay Kumar](https://github.com/vinayskywalker)  

# References
* https://www.cs.unm.edu/~crandall/netsfall13/TCtutorial.pdf
* [Quick Guide to Virtual Networking.](https://students.iitmandi.ac.in/moodle/mod/resource/view.php?id=21921)
* https://www.chuanjin.me/2016/08/03/transfer-file/
