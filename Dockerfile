# Usa uma imagem leve com Node.js
FROM node:18-alpine

# Instala o http-server globalmente
RUN npm install -g http-server

# Cria uma pasta e adiciona o conteúdo do projeto nela
WORKDIR /app
COPY . .

# Expõe a porta 8080
EXPOSE 8080

# Comando que roda o servidor
CMD ["http-server", ".", "-p", "8080"]
