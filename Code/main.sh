#Author - Deepak kumar
#Enrollment number - B17039

#keep your WIFI interface up
#delete previous log
rm log.txt
rm log.csv
echo "DELAY(in ms),RATE(in mbit),LOSS(in %),NUMBER OF CLIENT,THROUGHPUT(in MB/s)" >> log.csv
############### vary delay ############################
echo "1ms 20mbit 2% 5" >> log.txt
./run.sh 1ms 20mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 20mbit 2% 5" >> log.txt
./run.sh 5ms 20mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "10ms 20mbit 2% 5" >> log.txt
./run.sh  10ms 20mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "20ms 20mbit 2% 5" >> log.txt
./run.sh  20ms 20mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "30ms 20mbit 2% 5" >> log.txt
./run.sh  30ms 20mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "40ms 20mbit 2% 5" >> log.txt
./run.sh  40ms 20mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "50ms 20mbit 2% 5" >> log.txt
./run.sh  50ms 20mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "60ms 20mbit 2% 5" >> log.txt
./run.sh  60ms 20mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "70ms 20mbit 2% 5" >> log.txt
./run.sh 70ms 20mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "80ms 20mbit 2% 5" >> log.txt
./run.sh  80ms 20mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
###################### vary rate #########################
echo "5ms 1mbit 2% 5" >> log.txt
./run.sh 5ms 1mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 4mbit 2% 5" >> log.txt
./run.sh 5ms 4mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 9mbit 2% 5" >> log.txt
./run.sh 5ms 9mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 15mbit 2% 5" >> log.txt
./run.sh 5ms 15mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 30mbit 2% 5" >> log.txt
./run.sh 5ms 30mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 40mbit 2% 5" >> log.txt
./run.sh 5ms 40mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 50mbit 2% 5" >> log.txt
./run.sh 5ms 50mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 60mbit 2% 5" >> log.txt
./run.sh 5ms 60mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 70mbit 2% 5" >> log.txt
./run.sh 5ms 70mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 85mbit 2% 5" >> log.txt
./run.sh 5ms 85mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
########################## vary loss ##################################
echo "5ms 20mbit 1% 5" >> log.txt
./run.sh 5ms 20mbit 1% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 20mbit 2% 5" >> log.txt
./run.sh 5ms 20mbit 2% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 20mbit 5% 5" >> log.txt
./run.sh 5ms 20mbit 5% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 20mbit 10% 5" >> log.txt
./run.sh 5ms 20mbit 10% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 20mbit 15% 5" >> log.txt
./run.sh 5ms 20mbit 15% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 20mbit 20% 5" >> log.txt
./run.sh 5ms 20mbit 20% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 20mbit 25% 5" >> log.txt
./run.sh 5ms 20mbit 25% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 20mbit 30% 5" >> log.txt
./run.sh 5ms 20mbit 30% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 20mbit 40% 5" >> log.txt
./run.sh 5ms 20mbit 40% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
echo "5ms 20mbit 50% 5" >> log.txt
./run.sh 5ms 20mbit 50% 5;
while [ $(ps -aef | grep server.py | wc -l) -ne 1 ]
do
   sleep 1;
done
##############################################################################3