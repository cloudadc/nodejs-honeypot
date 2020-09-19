tmsh create net vlan vlan238 tag 238 interfaces add { 1.0 { tagged } }
tmsh create net self 10.26.238.38 address 10.26.238.38/24 vlan vlan238 allow-service default
tmsh create net vlan vlan90 tag 90 interfaces add { 1.0 { tagged } }
tmsh create net self 10.26.98.130 address 10.26.98.130/24 vlan vlan90 allow-service default
tmsh create net vlan vlan_27 tag 27 interfaces add { 1.0 { tagged } }
tmsh create net self 10.26.27.130 address 10.26.27.130/24 vlan vlan_27 allow-service default
tmsh create net vlan vlan_9 tag 9 interfaces add { 2.0 { tagged } }
tmsh create net self 12.26.9.130 address 12.26.9.130/24 vlan vlan_9 allow-service default
tmsh create net vlan vlan_90 tag 90 interfaces add { 4.0 { tagged } }
tmsh create net self 10.26.90.130 address 10.26.90.130/24 vlan vlan_90 allow-service default
tmsh create net vlan vlan_88 tag 88 interfaces add { 1.0 { tagged } }
tmsh create net self 10.26.88.130 address 10.26.88.130/24 vlan vlan_88 allow-service default
tmsh create net vlan vlan_223 tag  interfaces add { 1.0 { tagged } }
tmsh create net self 10.26.223.201 address 10.26.223.201/24 vlan vlan_223 allow-service default
tmsh create net self 12.26.223.201 address 12.26.223.201/24 vlan vlan_223 allow-service default
tmsh create net vlan vlan_222 tag 222 interfaces add { 1.0 { tagged } }
tmsh create net self 10.26.222.130 address 10.26.222.130/24 vlan vlan_222 allow-service default
tmsh create net self 12.26.222.130 address 12.26.222.130/24 vlan vlan_222 allow-service default
tmsh create net vlan vlan_2 tag 2 interfaces add { 2.0 { tagged } }
tmsh create net self 12.26.0.130 address 12.26.0.130/24 vlan vlan_2 allow-service default
tmsh create net vlan vlan_1 tag 1 interfaces add { 1.0 { tagged } }
tmsh create net self 10.26.0.201 address 10.26.0.201/24 vlan vlan_1 allow-service default
tmsh create net vlan vlan_87 tag 87 interfaces add { 4.0 { tagged } }
tmsh create net self 10.26.87.130 address 10.26.87.130/24 vlan vlan_87 allow-service default
