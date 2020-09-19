when CLIENT_ACCEPTED {

  # Edit these parameters first
  set province \u6c5f\u82cf\u7701
  set city \u5357\u4eac\u5e02
  set REMOTESYSLOGSERVER "192.168.71.35:514"

    set DATE_NCSA [clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]
    set CLIENT_IP [IP::client_addr]
    set CLIENT_PORT [UDP::client_port]
    set VIRTUAL_IP [IP::local_addr]
    set VIRTUAL_PORT [UDP::local_port]
    #set hsl [HSL::open -proto UDP -pool pool_natlog]
    if { $VIRTUAL_PORT == 53} {
        set HONEYPOTTYPE "DNS"
    } elseif { $VIRTUAL_PORT == 2049 } {
        set HONEYPOTTYPE "NFS"
    } else {
        set HONEYPOTTYPE "UDP"
    }
    
    set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"province\": \"$province\",\"city\": \"$city\",\"message\": \"$HONEYPOTTYPE Honeypot be accessed\", \"type\": $HONEYPOTTYPE, \"protocol\": \"tcp\"}"
    log local0. $msg
    log $REMOTESYSLOGSERVER $msg

}
