# Image officielle Node.js (LTS)
FROM node:20-alpine

# Dossier de travail dans le container
WORKDIR /app

# Copier package.json
COPY package*.json ./

# Installer dépendances
RUN npm install --production

# Copier le code
COPY src ./src

# Exposer le port
EXPOSE 3000

# Commande de démarrage
CMD ["node", "src/index.js"]
