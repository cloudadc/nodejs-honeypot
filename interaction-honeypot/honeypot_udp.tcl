when CLIENT_ACCEPTED {
    
    set DATE_NCSA [clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]
    set CLIENT_IP [IP::client_addr]
    set CLIENT_PORT [UDP::client_port]
    set VIRTUAL_IP [IP::local_addr]
    set VIRTUAL_PORT [UDP::local_port]
    
    if { $VIRTUAL_PORT == 53} {
        set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"DNS Honeypot be accessed\", \"type\": \"dns\", \"protocal\": \"udp\"}"
        log local0. $msg
        HSL::send $hsl $msg
    } elseif { $VIRTUAL_PORT == 2049 } {
        set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"NFS Honeypot be accessed\", \"type\": \"nfs\", \"protocal\": \"udp\"}"
        log local0. $msg
        HSL::send $hsl $msg
    } else {
        set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"UDP Honeypot be accessed\", \"type\": \"unkown\", \"protocal\": \"udp\"}"
        log local0. $msg
        HSL::send $hsl $msg
    }
    
}
