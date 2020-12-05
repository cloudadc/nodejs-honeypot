var f5 = require('f5-nodejs');
var fs = require('fs');
var express = require('express');
var app = express();

function record(req) {
  var contents = {};
  contents.httpHeaders = req.headers;
  contents.app = req.app;
  contents.baseUrl = req.baseUrl;
  contents.body = req.body;
  contents.cookies = req.cookies;
  contents.fresh = req.fresh;
  contents.hostname = req.hostname;
  contents.clientIp = req.ip;
  contents.ips = req.ips;
  contents.originalUrl = req.originalUrl;
  contents.params = req.params;
  contents.path = req.path;
  contents.protocol = req.protocol;
  contents.query = req.query;
  contents.route = req.route;
  contents.secure = req.secure;

  var event = {};
  event.data = contents;
  event.event_timestamp = Date.now();

  console.log(JSON.stringify(event));
}

app.get('/', function (req, res) {
   record(req);
   res.send(JSON.stringify({"success": 1}));
})

app.get('/openapi.json', function (req, res) {
   record(req);

  fs.readFile('openapi.json', "utf8", function(err, data) {
      if (err) {
          res.send(JSON.stringify({"success": 0}));
      } else {
          res.send(data);
      }
  });

})

app.get('/api/customers', function (req, res) {
  record(req);
  res.send(JSON.stringify({"customerss": ["bar", "foo", "zoo"]}));
})

app.get('/api/getCustomerByName', function (req, res) {
  record(req);
  var name = req.query.name;
  res.send(JSON.stringify({"pet": name}));
})

app.post('/api/addCustomer', function (req, res) {
  record(req);
  res.send(JSON.stringify({"success": 1}));
})

app.delete('/api/deleteCustomer', function (req, res) {
  record(req);
  res.send(JSON.stringify({"success": 1}));
})

app.put('/api/updateCustomer', function (req, res) {
  record(req);
  res.send(JSON.stringify({"success": 1}));
})

app.get('/oauth/authorize', function (req, res) {
  record(req);
  res.send(JSON.stringify({"success": 1}));
})

app.post('/oauth/request_token', function (req, res) {
  record(req);
  res.send(JSON.stringify({"oauth_token": "Z6eEdO8MOmk394WozF5oKyuAv855l4Mlqo7hhlSLik"}));
})

var plugin = new f5.ILXPlugin();
plugin.startHttpServer(app);



