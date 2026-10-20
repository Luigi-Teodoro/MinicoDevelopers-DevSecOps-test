const http = require('http');
const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/html' });
  res.end('<h1>MinicoDevelopers - Pagina Web de Prueba</h1>');
});
server.listen(3000, () => console.log('Servidor corriendo en puerto 3000'));
