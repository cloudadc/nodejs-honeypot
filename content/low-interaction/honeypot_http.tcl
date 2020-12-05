when HTTP_REQUEST {

  # Edit these parameters first
  set province \u6c5f\u82cf\u7701
  set city \u5357\u4eac\u5e02
  set REMOTESYSLOGSERVER "192.168.71.35:514"

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


  set msg "{\"timestamp\": \"$DATE_NCSA\", \"client_ip\": \"$CLIENT_IP\", \"client_port\": $CLIENT_PORT, \"server_ip\": \"$VIRTUAL_IP\", \"server_port\": $VIRTUAL_PORT, \"http_headers\": $HTTP_HEADERS_OBJECT, \"http_version\": \"$HTTP_VERSION\", \"http_method\": \"$HTTP_METHOD\", \"http_uri\": \"$HTTP_URI\", \"http_path\": \"$HTTP_PATH\", \"http_host\": \"$HTTP_HOST\", \"http_query\": \"$HTTP_QUERY\", \"http_payload\": \"$HTTP_PAYLOAD\",\"province\": \"$province\",\"city\": \"$city\",\"message\": \"HTTP Honeypot be accessed\", \"type\": \"http\"}"
  
  #HSL::send $hsl $msg
  log local0. $msg
  log $REMOTESYSLOGSERVER $msg
  pool pool_mg
  HTTP::respond 200 -version 1.1 content "系统维护" noserver Server "TEST-I4-LB04" Content-Type "text/html" X-Powered-By "TEST" Access-Control-Allow-Origin "*"
}
