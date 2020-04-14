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

app.get('/api/pets', function (req, res) {
  record(req);
  res.send(JSON.stringify({"pets": ["bar", "foo", "zoo"]}));
})

app.get('/api/getPetByName', function (req, res) {
  record(req);
  var name = req.query.name;
  res.send(JSON.stringify({"pet": name}));
})

app.post('/api/addPet', function (req, res) {
  record(req);
  res.send(JSON.stringify({"success": 1}));
})

app.delete('/api/deletePet', function (req, res) {
  record(req);
  res.send(JSON.stringify({"success": 1}));
})

app.put('/api/updatePet', function (req, res) {
  record(req);
  res.send(JSON.stringify({"success": 1}));
})

var plugin = new f5.ILXPlugin();
plugin.startHttpServer(app);

