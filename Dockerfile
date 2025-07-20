# Imagen base oficial de Node
FROM node:18

# Crea el directorio de trabajo
WORKDIR /app

# Instala n8n globalmente
RUN npm install -g n8n

# Expone el puerto por defecto
EXPOSE 5678

# Variables de entorno opcionales para login
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=wikiseba123

# Comando para iniciar n8n
CMD ["n8n"]
