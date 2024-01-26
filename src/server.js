"use strict";

var http = require("http");

var server = http.createServer(function (request, response) {
  response.writeHead(200, {"Content-Type": "text/plain"});
  response.end("Your Cloudron PostgreSQL test database is running!\n");
});

server.listen(3000);

console.log("Server running at port 3000");

