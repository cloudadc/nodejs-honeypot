when HTTP_REQUEST {

  # Edit these parameters first
  set area "I5"
  set city \u5317\u4eac\u5e02
  set REMOTESYSLOGSERVER "40.2.208.207:514"
  set BIGIP_HOSTNAME [info hostname]

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
    append HTTP_HEADERS_OBJECT "$item: \"[HTTP::header values $item]\""
  }
  append HTTP_HEADERS_OBJECT "}"

  #set hsl [HSL::open -proto UDP -pool pool_log]
  
  set username [HTTP::username]
  set message "[IP::client_addr] use $username try to authorized to access virtual server [IP::local_addr]:[TCP::local_port]."
  set msg "{ timestamp: \"$DATE_NCSA\", hostname: \"$BIGIP_HOSTNAME\", client_ip: \"$CLIENT_IP\", client_port: $CLIENT_PORT, server_ip: \"$VIRTUAL_IP\", server_port: $VIRTUAL_PORT, http_headers: $HTTP_HEADERS_OBJECT, http_version: \"$HTTP_VERSION\", http_method: \"$HTTP_METHOD\", http_uri: \"$HTTP_URI\", http_path: \"$HTTP_PATH\", http_host: \"$HTTP_HOST\", http_query: \"$HTTP_QUERY\", http_payload: \"$HTTP_PAYLOAD\", area: \"$area\", city: \"$city\", message: \"$message\", level: 2, type: \"http\" }"
  log local0. $msg
  log $REMOTESYSLOGSERVER $msg
  
  switch [substr [URI::path [HTTP::path]] 1 "/"] {
     login {
         HTTP::respond 401 WWW-Authenticate "Basic realm=\"Secured Area\""
     }
     default {
         HTTP::respond 403 content "<head><title>warning</title></head><body><h1>Unauthorized Access!!!All your actions will be recorded!!!</h1></body>" Mime-Type "text/html"
     }
  }

}
