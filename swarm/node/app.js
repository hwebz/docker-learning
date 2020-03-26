var http = require('http')
var sleep = require('system-sleep')
var os = require('os')

var hostname = os.hostname()

http.createServer(function(req, res) {
    res.writeHead(200, {'Content-Type': 'text/plain'})
    res.end('Swarm service running by Node app, hostname=' + hostname)
}).listen(8085)

console.log('Node app listening at port 8085 hostname=' + hostname)