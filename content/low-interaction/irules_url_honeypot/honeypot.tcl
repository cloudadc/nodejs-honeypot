when HTTP_REQUEST {
    set uri [HTTP::uri]
    if { $uri starts_with "/oauth/authorize" or $uri starts_with "/oauth/request_token"} {
        pool honeypot_pool
    } else {
        pool http_pool
    }
}

