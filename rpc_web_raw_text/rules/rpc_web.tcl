when HTTP_REQUEST_RELEASE {

    set plugin [ILX::init rpc_web_raw_plugin rpc_web]
    
    set rb [ILX::call $plugin rawTextHttpBody]
    
    HTTP::respond 200 -version 1.1 content "$rb" noserver Server "BIG-IP ILX" Content-Type "text/html" X-Powered-By "SE" Access-Control-Allow-Origin "*"
}



