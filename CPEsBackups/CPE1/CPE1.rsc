# 2026-06-17 14:11:04 by RouterOS 7.20.8
# system id = qR+z6hz/zKC
#
/interface ethernet
set [ find default-name=ether1 ] disable-running-check=no
set [ find default-name=ether2 ] disable-running-check=no
set [ find default-name=ether3 ] disable-running-check=no
set [ find default-name=ether4 ] disable-running-check=no
/ip pool
add name=dhcp_pool0 ranges=192.168.10.2-192.168.10.254
/ip dhcp-server
add address-pool=dhcp_pool0 interface=ether3 name=dhcp1
/port
set 0 name=serial0
/ip address
add address=203.0.27.6/30 interface=ether2 network=203.0.27.4
add address=192.168.10.1/24 interface=ether3 network=192.168.10.0
/ip dhcp-client
add interface=ether1
/ip dhcp-server network
add address=192.168.10.0/24 dns-server=8.8.8.8 gateway=192.168.10.1
/ip dns
set allow-remote-requests=yes servers=8.8.8.8
/ip firewall nat
add action=masquerade chain=srcnat
/ip route
add disabled=no dst-address=0.0.0.0/0 gateway=203.0.27.5 routing-table=main \
    suppress-hw-offload=no
/system identity
set name=CPE1
