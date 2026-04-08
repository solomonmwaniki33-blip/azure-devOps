const http = require("http");

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end("Cloud Infrastructure is Healthy and Running!\n");
});

const PORT = process.env.PORT || 8080;
server.listen(PORT, () => {
  console.log(`Monitoring app running on port ${PORT}`);
});
