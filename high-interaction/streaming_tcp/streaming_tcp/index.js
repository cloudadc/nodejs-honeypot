var f5 = require('f5-nodejs');
var plugin = new f5.ILXPlugin();

plugin.on("connect", function(flow)
{

    flow.client.on("error", function(err){
        // skip error
    });
    var event = {};
    event.client_ip = flow.client.remoteAddress;
    event.client_port = flow.client.remotePort;
    event.client_ip_family = flow.client.remoteFamily;
    event.server_ip = flow.client.localAddress;
    event.server_port = flow.client.localPort;
    var contents = {};
    contents.event = event;
    var contentsJSON = JSON.stringify(contents);
    console.log(contentsJSON);
 
    flow.client.end("ok");
    
    

 });

var options = new f5.ILXPluginOptions();
options.disableServer = true;
plugin.start(options);



