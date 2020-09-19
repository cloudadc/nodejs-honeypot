when CLIENT_ACCEPTED {

  # Edit these parameters first
  set province \u6c5f\u82cf\u7701
  set city \u5357\u4eac\u5e02
  set REMOTESYSLOGSERVER "192.168.71.35:514"
  set HIGHRISKPOOL "pool_high_risk"

  set DATE_NCSA [clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]
  set CLIENT_IP [IP::client_addr]
  set CLIENT_PORT [TCP::client_port]
  set IP_VERSION [IP::version]
  set VIRTUAL_IP [IP::local_addr]
  set VIRTUAL_PORT [TCP::local_port]
  #set hsl [HSL::open -proto UDP -pool pool_natlog]

  if {[IP::protocol] == 1}{
      log local0. [IP::protocol] 
  }

  if { ($VIRTUAL_PORT == 80)  or  ($VIRTUAL_PORT == 8080)}{
      set HONEYPOTTYPE "HTTP"
      pool $HIGHRISKPOOL
  } elseif { ($VIRTUAL_PORT == 443)  or  ($VIRTUAL_PORT == 8443)}{
      set HONEYPOTTYPE "HTTPS"
  } elseif {$VIRTUAL_PORT == 445} {
      set HONEYPOTTYPE "microsoft-ds"
      pool $HIGHRISKPOOL
  } elseif {$VIRTUAL_PORT == 3306} {
      set HONEYPOTTYPE "Mysql"
  } elseif {$VIRTUAL_PORT == 7001} {
      set HONEYPOTTYPE "AFS"
      pool $HIGHRISKPOOL
  } elseif {$VIRTUAL_PORT == 1521} {
      set HONEYPOTTYPE "Oracle"
  } elseif {$VIRTUAL_PORT == 5432} {
      set HONEYPOTTYPE "PostgreSQL"
  } elseif {$VIRTUAL_PORT == 1433} {
      set HONEYPOTTYPE "SQL Server"
  }  elseif {$VIRTUAL_PORT == 2638} {
      set HONEYPOTTYPE "sybase"
  }  elseif {$VIRTUAL_PORT == 50000} {
      set HONEYPOTTYPE "DB2"
  }  elseif {($VIRTUAL_PORT == 1883) or ($VIRTUAL_PORT == 8883)} {
      set HONEYPOTTYPE "MQTT"
  }  elseif {$VIRTUAL_PORT == 1723} {
      set HONEYPOTTYPE "PPTP"
  } elseif {$VIRTUAL_PORT == 9200} {
      set HONEYPOTTYPE "Elasticsearch"
  } elseif {$VIRTUAL_PORT == 5555} {
      set HONEYPOTTYPE "ADB(Andriod Debug Bridge)"
  } elseif {$VIRTUAL_PORT == 135} {
      set HONEYPOTTYPE "MSRPC/Samba"
  } elseif {$VIRTUAL_PORT == 21} {
      set HONEYPOTTYPE "FTP"
      pool $HIGHRISKPOOL
  } elseif {$VIRTUAL_PORT == 22} {
      set HONEYPOTTYPE "SSH"
      pool $HIGHRISKPOOL
  } elseif {$VIRTUAL_PORT == 3389} {
      set HONEYPOTTYPE "RDP"
      pool $HIGHRISKPOOL
  } elseif {$VIRTUAL_PORT == 6379} {
      set HONEYPOTTYPE "Redis"
  } elseif {$VIRTUAL_PORT == 11211} {
      set HONEYPOTTYPE "MemCache"
  } elseif {$VIRTUAL_PORT == 17017} {
      set HONEYPOTTYPE "MongoDB"
  } elseif {($VIRTUAL_PORT == 143) or ($VIRTUAL_PORT == 993)} {
      set HONEYPOTTYPE "IMAP(Internet Mail Access Protocal)"
  } elseif {$VIRTUAL_PORT == 25} {
      set HONEYPOTTYPE "SMTP"
  } elseif {($VIRTUAL_PORT == 109) or ($VIRTUAL_PORT == 110)} {
      set HONEYPOTTYPE "POP3"
  } elseif {$VIRTUAL_PORT == 23} {
      set HONEYPOTTYPE "Telnet"
  } elseif {$VIRTUAL_PORT == 49} {
      set HONEYPOTTYPE "TACACS"
  } elseif {$VIRTUAL_PORT == 161} {
      set HONEYPOTTYPE "SNMP"
  } elseif {$VIRTUAL_PORT == 16992} {
      set HONEYPOTTYPE "Intel AMT CVE-2017-5689"
  } elseif {$VIRTUAL_PORT == 9092} {
      set HONEYPOTTYPE "Kafka"
  } else {
      set HONEYPOTTYPE "TCP"
  }  
  
  set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"province\": \"$province\",\"city\": \"$city\",\"message\": \"$HONEYPOTTYPE Honeypot be accessed\", \"type\": $HONEYPOTTYPE, \"protocol\": \"tcp\"}"
  log local0. $msg
  log $REMOTESYSLOGSERVER $msg

  TCP::respond "\r\n\r\n"
  TCP::close
}
