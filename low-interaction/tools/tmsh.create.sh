tmsh create ltm virtual vlan02_10.1.10.45_tcp destination 10.1.10.45:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan02_10.1.10.45_udp destination 10.1.10.45:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan02_10.1.10.45_80_http destination 10.1.10.45:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan02_10.1.10.45_8080_http destination 10.1.10.45:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan02_10.1.10.46_tcp destination 10.1.10.46:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan02_10.1.10.46_udp destination 10.1.10.46:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan02_10.1.10.46_80_http destination 10.1.10.46:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan02_10.1.10.46_8080_http destination 10.1.10.46:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan01_10.1.10.35_tcp destination 10.1.10.35:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan01_10.1.10.35_udp destination 10.1.10.35:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan01_10.1.10.35_80_http destination 10.1.10.35:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan01_10.1.10.35_8080_http destination 10.1.10.35:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan01_10.1.10.36_tcp destination 10.1.10.36:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan01_10.1.10.36_udp destination 10.1.10.36:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan01_10.1.10.36_80_http destination 10.1.10.36:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan01_10.1.10.36_8080_http destination 10.1.10.36:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan01_10.1.10.37_tcp destination 10.1.10.37:any ip-protocol tcp rules { honeypot_tcp.tcl } source-address-translation { type automap } 
tmsh create ltm virtual vlan01_10.1.10.37_udp destination 10.1.10.37:any ip-protocol udp rules { honeypot_udp.tcl } source-address-translation { type automap }
tmsh create ltm virtual vlan01_10.1.10.37_80_http destination 10.1.10.37:80 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
tmsh create ltm virtual vlan01_10.1.10.37_8080_http destination 10.1.10.37:8080 ip-protocol tcp rules { honeypot_http.tcl  } profiles add { http}  source-address-translation { type automap }
