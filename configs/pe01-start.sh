# mpls
sysctl -w net.ipv4.ip_forward=1
sysctl -w net.mpls.conf.lo.input=1
sysctl -w net.mpls.conf.eth1.input=1
sysctl -w net.mpls.conf.eth2.input=1
sysctl -w net.mpls.platform_labels=1048575

# vrf
ip link add CUSTA type vrf table 10
ip link set CUSTA up
ip link set eth3 master CUSTA
