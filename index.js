const express = require('express');
const path = require('path');  // Requerir la librería 'path' para servir archivos estáticos
const app = express();
const PORT = process.env.PORT || 8080;

// Servir archivos estáticos desde la carpeta 'public'
app.use(express.static(path.join(__dirname, 'public')));

// Ruta para mostrar la página principal
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

app.listen(PORT, () => {
  console.log(`App listening on port ${PORT}`);
});