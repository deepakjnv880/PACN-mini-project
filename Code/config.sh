#Author - Vinay kumar
#Enrollment number - B17068

#intial configuration
macvlan_base_name='MacVlan';
namespace_base_name='NetNs';
interface_name='wlp1s0';
base_ip="192.0.2.";

# read -p "Enter the number of Namespaces you want to create : "  number_of_nodes;
number_of_nodes="$1"

echo "Creating and Configuring namespaces ...";
i=1;
while [ $i -le $number_of_nodes ]
do
    #delete the namespace if already created
    ip netns del "$namespace_base_name$i";
    #create the namespace
    ip netns add "$namespace_base_name$i";
    #create macvalan and link to wifi interface
    ip link add "$macvlan_base_name$i" link $interface_name type macvlan mode bridge;
    #link namespace to macvlan
    ip link set "$macvlan_base_name$i" netns "$namespace_base_name$i";
    #assign ip to macvlan1
    ip netns exec "$namespace_base_name$i" ifconfig "$macvlan_base_name$i" "$base_ip$i"/24"";
    # increment the value
    i=`expr $i + 1`;
done
echo "Successfully created all $number_of_nodes namespaces!";
# ip netns exec n2 python3 test.py client => on one terminal
# ip netns exec n1 python3 test.py server => on another terminal
