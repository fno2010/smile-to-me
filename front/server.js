var express = require('express');
var path = require('path');
var app = express();
var port = process.env.npm_package_config_port;

app.listen(port);

app.use(express.static(__dirname + '/public'));
app.get('/', function(req, res) {
    res.writeHead(302, {Location: '/index.html'});
    res.end();
});

console.log("Listening to 127.0.0.1:" + port + " ...");
console.log("CTRL-C to abort")

module.exports = app;
