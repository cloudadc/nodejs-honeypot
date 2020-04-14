when HTTP_REQUEST_RELEASE {
    set plugin [ILX::init rpc_web_plugin rpc_web]
    set rb [ILX::call $plugin getFormatedResponseBody]
    HTTP::respond 200 -version 1.1 content "$rb" noserver Server "BIG-IP ILX STREAMING" Content-Type "text/html" X-Powered-By "SE" Access-Control-Allow-Origin "*"
}
