# Use la imagen oficial de Node.js como base
FROM node:20-alpine

# Crea y define el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos package.json y package-lock.json (si está disponible) al contenedor
COPY package.json ./ 
# Si tienes un package-lock.json, también lo copiarías con el siguiente comando:
# COPY package-lock.json ./

# Instala las dependencias de Node.js dentro del contenedor
RUN npm install

# Copia el resto de los archivos del proyecto (incluyendo HTML y CSS) al contenedor
COPY . .

# Modificar la aplicación para que escuche en el puerto 80 (asegúrate de que en index.js está configurado a escuchar en el puerto 80)

# Expone el puerto 80 para que sea accesible desde fuera del contenedor
EXPOSE 80

# Comando para iniciar la aplicación cuando el contenedor arranca
CMD ["npm", "start"]
