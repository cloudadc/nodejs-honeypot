var fs = require('fs');
var f5 = require('f5-nodejs');

var server = new f5.ILXServer();

server.addMethod("getFormatedResponseHeaders", function(req, res) {
  
  var headers = JSON.parse(fs.readFileSync('additional-response-headers.json', 'utf8'));
  var keys = Object.keys(headers);
  var isFirst = false;
  var results = "";
  for (var i = 0; i < keys.length; i++) {
    if(isFirst) {
      results = results + " ";
    } else {
      isFirst = true;
    }
    results = results + (keys[i] + " \"" + headers[keys[i]] + "\"");
  }
  
  res.reply(results);
});

function randomBody() {
  return '<body>This is body content</body>';
}

server.addMethod("getFormatedResponseBody", function(req, res) {
  
  fs.readFile('template.html', "utf8", function(err, data) {
      if (err) {
          res.reply(randomBody());
      } else {
          res.reply(data);
      }
  });
});

server.listen();
