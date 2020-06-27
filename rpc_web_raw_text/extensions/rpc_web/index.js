var fs = require('fs');
var f5 = require('f5-nodejs');

var server = new f5.ILXServer();


server.addMethod("rawTextHttpBody", function(req, res) {
  
  fs.readFile('raw.txt', "utf8", function(err, data) {
      if (err) {
          res.reply('error');
      } else {
          res.reply(data);
      }
  });
});

server.listen();





