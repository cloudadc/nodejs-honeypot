when CLIENT_ACCEPTED {
  
  # Edit these parameters first
  set area "I5"
  set city \u5317\u4eac\u5e02
  set REMOTESYSLOGSERVER "40.2.208.207:514"
  set BIGIP_HOSTNAME [info hostname]
  
  set EVENT_LEVEL 3

    set DATE_NCSA [clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]
    set CLIENT_IP [IP::client_addr]
    set CLIENT_PORT [UDP::client_port]
    set VIRTUAL_IP [IP::local_addr]
    set VIRTUAL_PORT [UDP::local_port]
    #set hsl [HSL::open -proto UDP -pool pool_natlog]
    if { $VIRTUAL_PORT == 53} {
        set HONEYPOTTYPE "DNS"
        set EVENT_LEVEL 2
    } elseif { $VIRTUAL_PORT == 2049 } {
        set HONEYPOTTYPE "NFS"
        set EVENT_LEVEL 2
    } else {
        set HONEYPOTTYPE "UDP"
    }

    set msg "{ timestamp: \"$DATE_NCSA\", hostname: \"$BIGIP_HOSTNAME\", client_ip: \"$CLIENT_IP\", client_port: $CLIENT_PORT, server_ip: \"$VIRTUAL_IP\", server_port: $VIRTUAL_PORT, area: \"$area\", city: \"$city\", message: \"$HONEYPOTTYPE Honeypot be accessed\", level: $EVENT_LEVEL, type: \"$HONEYPOTTYPE\", protocol: \"udp\"} "
    log local0. $msg
    log $REMOTESYSLOGSERVER $msg

}
