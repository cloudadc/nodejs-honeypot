tmsh create net vlan vlan_222 tag 222 interfaces add { 1.3 { tagged } }
tmsh create net self 10.36.222.120 address 10.36.222.120/24 vlan vlan_222 allow-service default
