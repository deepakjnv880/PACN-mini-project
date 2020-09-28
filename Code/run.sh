#Author - Deepak kumar
#Enrollment number - B17039

#####################  Define Label of factors for single experiment #####################
# crate and config namespace
number_of_users="$4";
rate="$2"
loss="$3"
delay="$1"

#1 server and other are users
./config.sh $((number_of_users+1));

################## Run the experiment ######################################################
#Run the server first
ip netns exec NetNs1 python3 server.py $delay $rate $loss $number_of_users &
i=2 # First one is server
macvlan_base_name="MacVlan"
namespace_base_name="NetNs"
while [ $i -le $((number_of_users+1)) ]
do
    # Set rate on macvlan interface
    ip netns exec "$namespace_base_name$i" tc qdisc add dev "$macvlan_base_name$i" root handle 1: tbf rate $rate burst 1600 limit 3000
    # Set loss and delay on macvlan interface
    ip netns exec "$namespace_base_name$i" tc qdisc add dev "$macvlan_base_name$i" parent 1:1 handle 10: netem loss $loss delay $delay
    
    ip netns exec "$namespace_base_name$i" python3 client.py &

    i=`expr $i + 1`;
done
