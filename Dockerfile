# Verwenden Sie das offizielle Node-Image als Basis
FROM node:latest

# Setzen Sie das Arbeitsverzeichnis im Container
WORKDIR /app

# Kopieren Sie die package.json und package-lock.json Dateien in das Arbeitsverzeichnis
COPY package*.json ./

# Installieren Sie die Abhängigkeiten
RUN npm install

# Kopieren Sie den Rest des Anwendungscodes in das Arbeitsverzeichnis
COPY . .

# Exponieren Sie den Port, auf dem die Anwendung läuft
EXPOSE 3000

# Starten Sie die Anwendung
CMD [ "npm", "start" ]

