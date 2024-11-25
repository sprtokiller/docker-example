# Použij oficiální Node.js image jako základ
FROM node:18

# Nastav pracovní adresář v kontejneru
WORKDIR /app

# Zkopíruj package.json a package-lock.json (pokud existuje)
COPY package*.json ./

# Nainstaluj závislosti
RUN npm install

# Zkopíruj zbytek kódu aplikace do pracovního adresáře
COPY . .

# Exponuj port, na kterém aplikace běží
EXPOSE 3000

# Definuj příkaz pro spuštění aplikace
CMD ["npm", "start"]