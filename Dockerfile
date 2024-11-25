# Použití oficiální Node.js image jako základ
FROM node:18

# Nastavení pracovní složky v kontejneru
WORKDIR /app

# Zkopírování package.json a package-lock.json (pokud existuje)
COPY package*.json ./

# Instalace závislostí
RUN npm install

# Zkopírování zdrojového kódu aplikace
COPY . .

# Definování portu, který aplikace využívá
EXPOSE 3000

# Příkaz pro spuštění aplikace
CMD ["npm", "start"]