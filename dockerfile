# Usa una imagen base de Node.js
FROM node:14
WORKDIR /app


COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el código fuente de la aplicación
COPY . .

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 5003

# Comando para iniciar la aplicación
CMD ["node", "app.js"]