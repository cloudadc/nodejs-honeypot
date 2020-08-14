#
# TCP Honeypot, use to catch up the TCP attack.
#
# Command used to test
#  for i in 80 8080 443 8443 3306 1521 5432 1433 2638 50000 1883 8883 1723 9200 5555 135 21 22 25 3389 6379 11211 17017 143 993 109 110 49 161 16992 9092 70 1111 2222 ; do telnet 192.168.5.100 $i ; done 
#

when CLIENT_ACCEPTED {
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
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"HTTP Honeypot be accessed\", \"type\": \"http\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif { ($VIRTUAL_PORT == 443)  or  ($VIRTUAL_PORT == 8443)}{
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"HTTPS Honeypot be accessed\", \"type\": \"https\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 3306} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"Mysql Honeypot be accessed\", \"type\": \"mysql\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 1521} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"Oracle Honeypot be accessed\", \"type\": \"oracle\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 5432} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"PostgreSQL Honeypot be accessed\", \"type\": \"postgresql\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 1433} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"SQL Server Honeypot be accessed\", \"type\": \"sqlserver\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  }  elseif {$VIRTUAL_PORT == 2638} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"sybase Honeypot be accessed\", \"type\": \"sybase\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  }  elseif {$VIRTUAL_PORT == 50000} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"DB2 Honeypot be accessed\", \"type\": \"db2\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  }  elseif {($VIRTUAL_PORT == 1883) or ($VIRTUAL_PORT == 8883)} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"MQTT Honeypot be accessed\", \"type\": \"mqtt\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  }  elseif {$VIRTUAL_PORT == 1723} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"PPTP Honeypot be accessed\", \"type\": \"pptp\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 9200} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"Elasticsearch Honeypot be accessed\", \"type\": \"elasticsearch\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 5555} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"ADB(Andriod Debug Bridge) Honeypot be accessed\", \"type\": \"adb\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 135} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"MSRPC/Samba Honeypot be accessed\", \"type\": \"samba\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 21} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"FTP Honeypot be accessed\", \"type\": \"ftp\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 22} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"SSH Honeypot be accessed\", \"type\": \"ssh\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 3389} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"RDP Honeypot be accessed\", \"type\": \"rdp\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 6379} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"Redis Honeypot be accessed\", \"type\": \"redis\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 11211} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"MemCache Honeypot be accessed\", \"type\": \"memcache\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 17017} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"MongoDB Honeypot be accessed\", \"type\": \"mongodb\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {($VIRTUAL_PORT == 143) or ($VIRTUAL_PORT == 993)} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"IMAP(Internet Mail Access Protocal) Honeypot be accessed\", \"type\": \"imap\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 25} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"SMTP Honeypot be accessed\", \"type\": \"smtp\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {($VIRTUAL_PORT == 109) or ($VIRTUAL_PORT == 110)} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"POP3 Honeypot be accessed\", \"type\": \"pop3\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 23} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"Telnet Honeypot be accessed\", \"type\": \"telnet\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 49} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"TACACS Honeypot be accessed\", \"type\": \"tacacs\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 161} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"SNMP Honeypot be accessed\", \"type\": \"snmp\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 16992} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"Intel AMT CVE-2017-5689 Honeypot be accessed\", \"type\": \"cve\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } elseif {$VIRTUAL_PORT == 9092} {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"Kafka Honeypot be accessed\", \"type\": \"kafa\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  } else {
      set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\",\"server_port\":$VIRTUAL_PORT,\"message\": \"TCP Honeypot be accessed\", \"type\": \"unknown\", \"protocal\": \"tcp\"}"
      log local0. $msg
      HSL::send $hsl $msg
  }  
  
  TCP::respond "\r\n\r\n"
  TCP::close
}
