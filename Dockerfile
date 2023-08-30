# Utilisez une image Node.js comme base
FROM node:18

# Définissez le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copiez le fichier package.json et package-lock.json dans le répertoire de travail
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez le reste des fichiers dans le répertoire de travail
COPY . .

# Construisez l'application Angular
# RUN npm run build

# Exposez le port sur lequel votre application écoute
EXPOSE 4200

# Commande pour exécuter l'application lorsque le conteneur démarre
CMD ["npm", "start"]
