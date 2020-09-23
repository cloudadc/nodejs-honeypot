tmsh create ltm virtual vlan_222_10.36.222.0_tcp destination 10.36.222.0:any mask 255.255.255.0 ip-protocol tcp rules { vlan_222_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_10.36.222.0_udp destination 10.36.222.0:any mask 255.255.255.0 ip-protocol udp rules { vlan_222_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.0_80_http destination 10.36.222.0:80 mask 255.255.255.0 ip-protocol tcp rules { vlan_222_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.0_8080_http destination 10.36.222.0:8080 mask 255.255.255.0 ip-protocol tcp rules { vlan_222_http.tcl  } profiles add { http}  source-address-translation { type automap }
