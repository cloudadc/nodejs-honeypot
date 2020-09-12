when FLOW_INIT {
  log 10.1.10.10:514 local0.warning "F5MG find one IP connected to [IP::local_addr]:[TCP::local_port]. IP address is [IP::client_addr]" 
}
when HTTP_REQUEST {

if { [HTTP::username] ne "" } {
    set username [HTTP::username] 
    log 10.1.10.10:514 local0.warning "F5MG [IP::client_addr] use \"$username\" try to authorized to access virtual server [IP::local_addr]:[TCP::local_port]."
  }
  switch [substr [URI::path [HTTP::path]] 1 "/"] {
     login {
         HTTP::respond 401 WWW-Authenticate "Basic realm=\"Secured Area\""
     }
     default {
         HTTP::respond 403 content "<head><title>warning</title></head><body><h1>Unauthorized Access!!!All your actions will be recorded!!!</h1></body>" Mime-Type "text/html" 
         log 10.1.10.10:514 local0.warning "F5MG [IP::client_addr],connect to [IP::local_addr]:[TCP::local_port],[HTTP::method] [HTTP::path]"
     }
  }
}
