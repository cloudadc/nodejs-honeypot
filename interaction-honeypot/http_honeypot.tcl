#
# Http Honeypot
# Commands used to test:
#  for i in {1..10} ; do curl -X POST "http://10.1.10.36/service/customer/addCustomer?customerID=100ac0049&type=VIP&region=beijing" -d '<customer><name>test</name><id>100ac0049</id><type>VIP</tpye></customer>' -H "User-Agent: Honeypot Bot" -H "cept-Language: en-us" ; done
#


when HTTP_REQUEST {
  set DATE_NCSA [clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]
  set CLIENT_IP [IP::client_addr]
  set CLIENT_PORT [TCP::client_port]
  set VIRTUAL_IP [IP::local_addr]
  set VIRTUAL_PORT [TCP::local_port]
  set VIRTUAL_NAME [virtual name]
  set BIGIP_HOSTNAME [info hostname]
  set HTTP_VERSION [HTTP::version]
  set HTTP_METHOD [HTTP::method]
  set HTTP_URI [HTTP::uri]
  set HTTP_PATH [HTTP::path]
  set HTTP_HOST [HTTP::host]
  set HTTP_QUERY [HTTP::query]
  set HTTP_PAYLOAD [HTTP::payload]

  set HTTP_HEADERS [split [HTTP::header names] " "]
  set HTTP_HEADERS_OBJECT "{"

  set isFirst true
  foreach item $HTTP_HEADERS {
    if {$isFirst} {
        set isFirst false
    } else {
        append HTTP_HEADERS_OBJECT ", "
    }
    append HTTP_HEADERS_OBJECT "\"$item\": \"[HTTP::header values $item]\""
  }
  append HTTP_HEADERS_OBJECT "}"
  
  #set hsl [HSL::open -proto UDP -pool pool_natlog]
  

  set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\", \"server_port\": $VIRTUAL_PORT, \"http_headers\": $HTTP_HEADERS_OBJECT, \"http_version\": \"$HTTP_VERSION\", \"http_method\": \"$HTTP_METHOD\", \"http_uri\": \"$HTTP_URI\", \"http_path\": \"$HTTP_PATH\", \"http_host\": \"$HTTP_HOST\", \"http_query\": \"$HTTP_QUERY\", \"http_payload\": \"$HTTP_PAYLOAD\", \"message\": \"HTTP Honeypot be accessed\", \"type\": \"http\"}"

  #HSL::send $hsl $msg
  log local0. $msg

  HTTP::respond 200 -version 1.1 content "ok" noserver Server "CEB-I4-LB04" Content-Type "text/html" X-Powered-By "CEB" Access-Control-Allow-Origin "*"
}
