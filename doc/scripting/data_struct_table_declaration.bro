event bro_init()
    {
    local ssl_services: table[string] of port;
    
    ssl_services = table(["SSH"] = 22/tcp, ["HTTPS"] = 443/tcp);
    ssl_services["IMAPS"] = 993/tcp;

    if ( "SMTPS" !in ssl_services )
        ssl_services["SMTPS"] = 587/tcp;

    for ( k in ssl_services )
        print fmt("Service Name:  %s - Common Port: %s", k, ssl_services[k]);
    }
