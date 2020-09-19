tmsh create ltm virtual vlan223_10.36.223.0_24_tcp destination 10.36.223.0/24:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan223_10.36.223.0_24_udp destination 10.36.223.0/24:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan223_10.36.223.0_24_80_http destination 10.36.223.0/24:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan223_10.36.223.0_24_8080_http destination 10.36.223.0/24:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan223_12.36.223.0_24_tcp destination 12.36.223.0/24:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan223_12.36.223.0_24_udp destination 12.36.223.0/24:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan223_12.36.223.0_24_80_http destination 12.36.223.0/24:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan223_12.36.223.0_24_8080_http destination 12.36.223.0/24:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.121_tcp destination 10.36.27.121:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_27_10.36.27.121_udp destination 10.36.27.121:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.121_80_http destination 10.36.27.121:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.121_8080_http destination 10.36.27.121:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.122_tcp destination 10.36.27.122:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_27_10.36.27.122_udp destination 10.36.27.122:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.122_80_http destination 10.36.27.122:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.122_8080_http destination 10.36.27.122:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.123_tcp destination 10.36.27.123:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_27_10.36.27.123_udp destination 10.36.27.123:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.123_80_http destination 10.36.27.123:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.123_8080_http destination 10.36.27.123:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.124_tcp destination 10.36.27.124:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_27_10.36.27.124_udp destination 10.36.27.124:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.124_80_http destination 10.36.27.124:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.124_8080_http destination 10.36.27.124:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.125_tcp destination 10.36.27.125:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_27_10.36.27.125_udp destination 10.36.27.125:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.125_80_http destination 10.36.27.125:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.125_8080_http destination 10.36.27.125:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.126_tcp destination 10.36.27.126:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_27_10.36.27.126_udp destination 10.36.27.126:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.126_80_http destination 10.36.27.126:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.126_8080_http destination 10.36.27.126:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.127_tcp destination 10.36.27.127:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_27_10.36.27.127_udp destination 10.36.27.127:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.127_80_http destination 10.36.27.127:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.127_8080_http destination 10.36.27.127:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.128_tcp destination 10.36.27.128:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_27_10.36.27.128_udp destination 10.36.27.128:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.128_80_http destination 10.36.27.128:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.128_8080_http destination 10.36.27.128:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.129_tcp destination 10.36.27.129:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_27_10.36.27.129_udp destination 10.36.27.129:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.129_80_http destination 10.36.27.129:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.129_8080_http destination 10.36.27.129:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.130_tcp destination 10.36.27.130:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_27_10.36.27.130_udp destination 10.36.27.130:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.130_80_http destination 10.36.27.130:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_27_10.36.27.130_8080_http destination 10.36.27.130:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.121_tcp destination 10.36.88.121:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_88_10.36.88.121_udp destination 10.36.88.121:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.121_80_http destination 10.36.88.121:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.121_8080_http destination 10.36.88.121:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.122_tcp destination 10.36.88.122:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_88_10.36.88.122_udp destination 10.36.88.122:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.122_80_http destination 10.36.88.122:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.122_8080_http destination 10.36.88.122:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.123_tcp destination 10.36.88.123:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_88_10.36.88.123_udp destination 10.36.88.123:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.123_80_http destination 10.36.88.123:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.123_8080_http destination 10.36.88.123:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.124_tcp destination 10.36.88.124:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_88_10.36.88.124_udp destination 10.36.88.124:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.124_80_http destination 10.36.88.124:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.124_8080_http destination 10.36.88.124:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.125_tcp destination 10.36.88.125:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_88_10.36.88.125_udp destination 10.36.88.125:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.125_80_http destination 10.36.88.125:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.125_8080_http destination 10.36.88.125:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.126_tcp destination 10.36.88.126:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_88_10.36.88.126_udp destination 10.36.88.126:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.126_80_http destination 10.36.88.126:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.126_8080_http destination 10.36.88.126:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.127_tcp destination 10.36.88.127:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_88_10.36.88.127_udp destination 10.36.88.127:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.127_80_http destination 10.36.88.127:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.127_8080_http destination 10.36.88.127:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.128_tcp destination 10.36.88.128:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_88_10.36.88.128_udp destination 10.36.88.128:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.128_80_http destination 10.36.88.128:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.128_8080_http destination 10.36.88.128:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.129_tcp destination 10.36.88.129:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_88_10.36.88.129_udp destination 10.36.88.129:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.129_80_http destination 10.36.88.129:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.129_8080_http destination 10.36.88.129:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.130_tcp destination 10.36.88.130:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_88_10.36.88.130_udp destination 10.36.88.130:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.130_80_http destination 10.36.88.130:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_88_10.36.88.130_8080_http destination 10.36.88.130:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.121_tcp destination 10.36.222.121:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_10.36.222.121_udp destination 10.36.222.121:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.121_80_http destination 10.36.222.121:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.121_8080_http destination 10.36.222.121:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.122_tcp destination 10.36.222.122:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_10.36.222.122_udp destination 10.36.222.122:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.122_80_http destination 10.36.222.122:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.122_8080_http destination 10.36.222.122:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.123_tcp destination 10.36.222.123:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_10.36.222.123_udp destination 10.36.222.123:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.123_80_http destination 10.36.222.123:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.123_8080_http destination 10.36.222.123:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.124_tcp destination 10.36.222.124:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_10.36.222.124_udp destination 10.36.222.124:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.124_80_http destination 10.36.222.124:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.124_8080_http destination 10.36.222.124:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.125_tcp destination 10.36.222.125:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_10.36.222.125_udp destination 10.36.222.125:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.125_80_http destination 10.36.222.125:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.125_8080_http destination 10.36.222.125:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.126_tcp destination 10.36.222.126:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_10.36.222.126_udp destination 10.36.222.126:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.126_80_http destination 10.36.222.126:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.126_8080_http destination 10.36.222.126:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.127_tcp destination 10.36.222.127:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_10.36.222.127_udp destination 10.36.222.127:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.127_80_http destination 10.36.222.127:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.127_8080_http destination 10.36.222.127:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.128_tcp destination 10.36.222.128:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_10.36.222.128_udp destination 10.36.222.128:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.128_80_http destination 10.36.222.128:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.128_8080_http destination 10.36.222.128:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.129_tcp destination 10.36.222.129:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_10.36.222.129_udp destination 10.36.222.129:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.129_80_http destination 10.36.222.129:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.129_8080_http destination 10.36.222.129:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.130_tcp destination 10.36.222.130:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_10.36.222.130_udp destination 10.36.222.130:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.130_80_http destination 10.36.222.130:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_10.36.222.130_8080_http destination 10.36.222.130:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.121_tcp destination 12.36.222.121:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_12.36.222.121_udp destination 12.36.222.121:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.121_80_http destination 12.36.222.121:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.121_8080_http destination 12.36.222.121:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.122_tcp destination 12.36.222.122:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_12.36.222.122_udp destination 12.36.222.122:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.122_80_http destination 12.36.222.122:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.122_8080_http destination 12.36.222.122:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.123_tcp destination 12.36.222.123:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_12.36.222.123_udp destination 12.36.222.123:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.123_80_http destination 12.36.222.123:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.123_8080_http destination 12.36.222.123:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.124_tcp destination 12.36.222.124:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_12.36.222.124_udp destination 12.36.222.124:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.124_80_http destination 12.36.222.124:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.124_8080_http destination 12.36.222.124:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.125_tcp destination 12.36.222.125:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_12.36.222.125_udp destination 12.36.222.125:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.125_80_http destination 12.36.222.125:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.125_8080_http destination 12.36.222.125:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.126_tcp destination 12.36.222.126:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_12.36.222.126_udp destination 12.36.222.126:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.126_80_http destination 12.36.222.126:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.126_8080_http destination 12.36.222.126:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.127_tcp destination 12.36.222.127:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_12.36.222.127_udp destination 12.36.222.127:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.127_80_http destination 12.36.222.127:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.127_8080_http destination 12.36.222.127:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.128_tcp destination 12.36.222.128:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_12.36.222.128_udp destination 12.36.222.128:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.128_80_http destination 12.36.222.128:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.128_8080_http destination 12.36.222.128:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.129_tcp destination 12.36.222.129:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_12.36.222.129_udp destination 12.36.222.129:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.129_80_http destination 12.36.222.129:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.129_8080_http destination 12.36.222.129:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.130_tcp destination 12.36.222.130:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_222_12.36.222.130_udp destination 12.36.222.130:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.130_80_http destination 12.36.222.130:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_222_12.36.222.130_8080_http destination 12.36.222.130:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.121_tcp destination 12.36.0.121:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_2_12.36.0.121_udp destination 12.36.0.121:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.121_80_http destination 12.36.0.121:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.121_8080_http destination 12.36.0.121:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.122_tcp destination 12.36.0.122:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_2_12.36.0.122_udp destination 12.36.0.122:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.122_80_http destination 12.36.0.122:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.122_8080_http destination 12.36.0.122:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.123_tcp destination 12.36.0.123:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_2_12.36.0.123_udp destination 12.36.0.123:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.123_80_http destination 12.36.0.123:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.123_8080_http destination 12.36.0.123:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.124_tcp destination 12.36.0.124:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_2_12.36.0.124_udp destination 12.36.0.124:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.124_80_http destination 12.36.0.124:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.124_8080_http destination 12.36.0.124:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.125_tcp destination 12.36.0.125:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_2_12.36.0.125_udp destination 12.36.0.125:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.125_80_http destination 12.36.0.125:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.125_8080_http destination 12.36.0.125:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.126_tcp destination 12.36.0.126:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_2_12.36.0.126_udp destination 12.36.0.126:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.126_80_http destination 12.36.0.126:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.126_8080_http destination 12.36.0.126:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.127_tcp destination 12.36.0.127:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_2_12.36.0.127_udp destination 12.36.0.127:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.127_80_http destination 12.36.0.127:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.127_8080_http destination 12.36.0.127:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.128_tcp destination 12.36.0.128:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_2_12.36.0.128_udp destination 12.36.0.128:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.128_80_http destination 12.36.0.128:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.128_8080_http destination 12.36.0.128:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.129_tcp destination 12.36.0.129:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_2_12.36.0.129_udp destination 12.36.0.129:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.129_80_http destination 12.36.0.129:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.129_8080_http destination 12.36.0.129:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.130_tcp destination 12.36.0.130:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_2_12.36.0.130_udp destination 12.36.0.130:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.130_80_http destination 12.36.0.130:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_2_12.36.0.130_8080_http destination 12.36.0.130:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.121_tcp destination 10.36.0.121:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_1_10.36.0.121_udp destination 10.36.0.121:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.121_80_http destination 10.36.0.121:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.121_8080_http destination 10.36.0.121:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.122_tcp destination 10.36.0.122:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_1_10.36.0.122_udp destination 10.36.0.122:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.122_80_http destination 10.36.0.122:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.122_8080_http destination 10.36.0.122:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.123_tcp destination 10.36.0.123:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_1_10.36.0.123_udp destination 10.36.0.123:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.123_80_http destination 10.36.0.123:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.123_8080_http destination 10.36.0.123:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.124_tcp destination 10.36.0.124:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_1_10.36.0.124_udp destination 10.36.0.124:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.124_80_http destination 10.36.0.124:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.124_8080_http destination 10.36.0.124:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.125_tcp destination 10.36.0.125:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_1_10.36.0.125_udp destination 10.36.0.125:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.125_80_http destination 10.36.0.125:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.125_8080_http destination 10.36.0.125:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.126_tcp destination 10.36.0.126:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_1_10.36.0.126_udp destination 10.36.0.126:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.126_80_http destination 10.36.0.126:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.126_8080_http destination 10.36.0.126:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.127_tcp destination 10.36.0.127:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_1_10.36.0.127_udp destination 10.36.0.127:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.127_80_http destination 10.36.0.127:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.127_8080_http destination 10.36.0.127:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.128_tcp destination 10.36.0.128:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_1_10.36.0.128_udp destination 10.36.0.128:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.128_80_http destination 10.36.0.128:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.128_8080_http destination 10.36.0.128:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.129_tcp destination 10.36.0.129:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_1_10.36.0.129_udp destination 10.36.0.129:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.129_80_http destination 10.36.0.129:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.129_8080_http destination 10.36.0.129:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.130_tcp destination 10.36.0.130:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_1_10.36.0.130_udp destination 10.36.0.130:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.130_80_http destination 10.36.0.130:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_1_10.36.0.130_8080_http destination 10.36.0.130:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.121_tcp destination 10.36.98.121:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_98_10.36.98.121_udp destination 10.36.98.121:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.121_80_http destination 10.36.98.121:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.121_8080_http destination 10.36.98.121:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.122_tcp destination 10.36.98.122:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_98_10.36.98.122_udp destination 10.36.98.122:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.122_80_http destination 10.36.98.122:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.122_8080_http destination 10.36.98.122:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.123_tcp destination 10.36.98.123:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_98_10.36.98.123_udp destination 10.36.98.123:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.123_80_http destination 10.36.98.123:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.123_8080_http destination 10.36.98.123:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.124_tcp destination 10.36.98.124:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_98_10.36.98.124_udp destination 10.36.98.124:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.124_80_http destination 10.36.98.124:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.124_8080_http destination 10.36.98.124:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.125_tcp destination 10.36.98.125:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_98_10.36.98.125_udp destination 10.36.98.125:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.125_80_http destination 10.36.98.125:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.125_8080_http destination 10.36.98.125:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.126_tcp destination 10.36.98.126:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_98_10.36.98.126_udp destination 10.36.98.126:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.126_80_http destination 10.36.98.126:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.126_8080_http destination 10.36.98.126:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.127_tcp destination 10.36.98.127:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_98_10.36.98.127_udp destination 10.36.98.127:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.127_80_http destination 10.36.98.127:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.127_8080_http destination 10.36.98.127:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.128_tcp destination 10.36.98.128:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_98_10.36.98.128_udp destination 10.36.98.128:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.128_80_http destination 10.36.98.128:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.128_8080_http destination 10.36.98.128:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.129_tcp destination 10.36.98.129:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_98_10.36.98.129_udp destination 10.36.98.129:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.129_80_http destination 10.36.98.129:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.129_8080_http destination 10.36.98.129:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.130_tcp destination 10.36.98.130:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_98_10.36.98.130_udp destination 10.36.98.130:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.130_80_http destination 10.36.98.130:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_98_10.36.98.130_8080_http destination 10.36.98.130:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.121_tcp destination 10.36.87.121:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_87_10.36.87.121_udp destination 10.36.87.121:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.121_80_http destination 10.36.87.121:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.121_8080_http destination 10.36.87.121:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.122_tcp destination 10.36.87.122:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_87_10.36.87.122_udp destination 10.36.87.122:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.122_80_http destination 10.36.87.122:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.122_8080_http destination 10.36.87.122:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.123_tcp destination 10.36.87.123:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_87_10.36.87.123_udp destination 10.36.87.123:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.123_80_http destination 10.36.87.123:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.123_8080_http destination 10.36.87.123:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.124_tcp destination 10.36.87.124:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_87_10.36.87.124_udp destination 10.36.87.124:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.124_80_http destination 10.36.87.124:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.124_8080_http destination 10.36.87.124:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.125_tcp destination 10.36.87.125:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_87_10.36.87.125_udp destination 10.36.87.125:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.125_80_http destination 10.36.87.125:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.125_8080_http destination 10.36.87.125:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.126_tcp destination 10.36.87.126:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_87_10.36.87.126_udp destination 10.36.87.126:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.126_80_http destination 10.36.87.126:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.126_8080_http destination 10.36.87.126:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.127_tcp destination 10.36.87.127:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_87_10.36.87.127_udp destination 10.36.87.127:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.127_80_http destination 10.36.87.127:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.127_8080_http destination 10.36.87.127:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.128_tcp destination 10.36.87.128:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_87_10.36.87.128_udp destination 10.36.87.128:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.128_80_http destination 10.36.87.128:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.128_8080_http destination 10.36.87.128:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.129_tcp destination 10.36.87.129:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_87_10.36.87.129_udp destination 10.36.87.129:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.129_80_http destination 10.36.87.129:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.129_8080_http destination 10.36.87.129:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.130_tcp destination 10.36.87.130:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan_87_10.36.87.130_udp destination 10.36.87.130:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.130_80_http destination 10.36.87.130:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan_87_10.36.87.130_8080_http destination 10.36.87.130:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
