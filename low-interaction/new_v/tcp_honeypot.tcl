when CLIENT_ACCEPTED {

  # Edit these parameters first
  set area "I5"
  set city \u5317\u4eac\u5e02
  set REMOTESYSLOGSERVER "40.2.208.207:514"
  set BIGIP_HOSTNAME [info hostname]

  set DATE_NCSA [clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]
  set CLIENT_IP [IP::client_addr]
  set CLIENT_PORT [TCP::client_port]
  set IP_VERSION [IP::version]
  set VIRTUAL_IP [IP::local_addr]
  set VIRTUAL_PORT [TCP::local_port]
  #set hsl [HSL::open -proto UDP -pool pool_log]
  if {[IP::protocol] == 1}{
      log local0. [IP::protocol] 
  }

  if { ($VIRTUAL_PORT == 80)  or  ($VIRTUAL_PORT == 8080)}{
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0048\u0054\u0054\u0050\u7aef\u53e3"
	  set type "HTTP"
  } elseif { ($VIRTUAL_PORT == 443)  or  ($VIRTUAL_PORT == 8443)}{
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0048\u0054\u0054\u0050\u0053\u7aef\u53e3"
	  set type "HTTPS"
  } elseif {$VIRTUAL_PORT == 445} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0034\u0034\u0035\u7aef\u53e3"
	  set type "\u0034\u0034\u0035\u7aef\u53e3\u5f02\u5e38\u8bbf\u95ee"
  } elseif {$VIRTUAL_PORT == 3306} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u004d\u0059\u0053\u0051\u004c\u0020\u0033\u0033\u0030\u0036\u7aef\u53e3"
	  set type "MYSQL"
  } elseif {$VIRTUAL_PORT == 7001} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0057\u0065\u0062\u004c\u006f\u0067\u0069\u0063\u9ed8\u8ba4\u7aef\u53e3"
	  set type "WEBlogic"
  } elseif {$VIRTUAL_PORT == 1521} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u004f\u0072\u0061\u0063\u006c\u0065\u6570\u636e\u5e93\u670d\u52a1"
      set type "Oracle"
  } elseif {$VIRTUAL_PORT == 5432} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0050\u006f\u0073\u0074\u0067\u0072\u0065\u0073\u0071\u006c\u670d\u52a1"
      set type "PostgreSQL"
  } elseif {$VIRTUAL_PORT == 1433} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0053\u0051\u004c\u0020\u0073\u0065\u0072\u0076\u0065\u0072\u670d\u52a1"
      set type "SQL Server"
  }  elseif {$VIRTUAL_PORT == 2638} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0073\u0079\u0062\u0061\u0073\u0065"
      set type "sybase"
  }  elseif {$VIRTUAL_PORT == 50000} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0044\u0042\u0032\u670d\u52a1"
      set type "DB2"
  }  elseif {($VIRTUAL_PORT == 1883) or ($VIRTUAL_PORT == 8883)} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u004d\u0051\u0054\u0054\u534f\u8bae\u7aef\u53e3"
      set type "MQTT"
  }  elseif {$VIRTUAL_PORT == 1723} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0050\u0050\u0054\u0050\u670d\u52a1"
      set type "PPTP"
  } elseif {$VIRTUAL_PORT == 9200} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0045\u006c\u0061\u0073\u0074\u0069\u0063\u0073\u0065\u0061\u0072\u0063\u0068\u670d\u52a1"
      set type "Elasticsearch"
  } elseif {$VIRTUAL_PORT == 5555} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0041\u0044\u0042\u0028\u0041\u006e\u0064\u0072\u0069\u006f\u0064\u0020\u0044\u0065\u0062\u0075\u0067\u0020\u0042\u0072\u0069\u0064\u0067\u0065\u0029\u670d\u52a1"
      set type "ADB(Andriod Debug Bridge)"
  } elseif {$VIRTUAL_PORT == 135} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0073\u0061\u006d\u0062\u0061\u670d\u52a1"
      set type "MSRPC/Samba"
  } elseif {$VIRTUAL_PORT == 21} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0046\u0054\u0050\u670d\u52a1"
      set type "FTP"
  } elseif {$VIRTUAL_PORT == 22} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0053\u0053\u0048\u670d\u52a1"
      set type "SSH"
  } elseif {$VIRTUAL_PORT == 3389} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u8fdc\u7a0b\u684c\u9762\u670d\u52a1\u0033\u0033\u0038\u0039"
	  set type "RDP"
  } elseif {$VIRTUAL_PORT == 6379} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0072\u0065\u0064\u0069\u0073\u670d\u52a1"
      set type "Redis"
  } elseif {$VIRTUAL_PORT == 11211} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u004d\u0065\u006d\u0043\u0061\u0063\u0068\u0065\u670d\u52a1"
      set type "MemCache"
  } elseif {$VIRTUAL_PORT == 17017} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u004d\u006f\u006e\u0067\u006f\u0044\u0042\u670d\u52a1"
      set type "MongoDB"
  } elseif {($VIRTUAL_PORT == 143) or ($VIRTUAL_PORT == 993)} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0049\u004d\u0041\u0050\u670d\u52a1"
      set type "IMAP(Internet Mail Access Protocal)"
  } elseif {$VIRTUAL_PORT == 25} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0053\u004d\u0054\u0050\u670d\u52a1"
      set type "SMTP"
  } elseif {($VIRTUAL_PORT == 109) or ($VIRTUAL_PORT == 110)} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0050\u004f\u0050\u0033\u670d\u52a1"
      set type "POP3"
  } elseif {$VIRTUAL_PORT == 23} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0074\u0065\u006c\u006e\u0065\u0074\u670d\u52a1"
      set type "Telnet"
  } elseif {$VIRTUAL_PORT == 49} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0054\u0041\u0043\u0041\u0043\u0053\u670d\u52a1"
      set type "TACACS"
  } elseif {$VIRTUAL_PORT == 161} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u0053\u004e\u004d\u0050\u670d\u52a1"
      set type "SNMP"
  } elseif {$VIRTUAL_PORT == 9092} {
      set HONEYPOTMESSAGE "\u53ef\u7591\u8fde\u63a5\u0023\u5c1d\u8bd5\u8fde\u63a5\u004b\u0061\u0066\u006b\u0061\u670d\u52a1"
      set type "Kafka"
  } else {
      set HONEYPOTMESSAGE "\u53ef\u7591\u7684\u0054\u0043\u0050\u7aef\u53e3\u626b\u63cf"
      set type "TCP"
  }  
  
  set EVENT_LEVEL 3
  
  if { ($VIRTUAL_PORT == 80)  or  ($VIRTUAL_PORT == 8080) or ($VIRTUAL_PORT == 445) or ($VIRTUAL_PORT == 7001) or  ($VIRTUAL_PORT == 21) or ($VIRTUAL_PORT == 22) or ($VIRTUAL_PORT == 3389) or ($VIRTUAL_PORT == 3306)} {
     set EVENT_LEVEL 2
  }
  
  set msg "{ timestamp: \"$DATE_NCSA\", hostname: \"$BIGIP_HOSTNAME\", client_ip: \"$CLIENT_IP\", client_port: $CLIENT_PORT, server_ip: \"$VIRTUAL_IP\", server_port: $VIRTUAL_PORT, area: $area, city: $city, message: \"$HONEYPOTMESSAGE\", level: $EVENT_LEVEL, type: \"$type\", protocol: \"tcp\"} "
  log local0. $msg
  log $REMOTESYSLOGSERVER $msg

  TCP::respond "\r\n\r\n"
  TCP::close
  }
