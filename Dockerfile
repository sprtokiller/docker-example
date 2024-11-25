# Použijeme oficiální Node.js image z Docker Hub
FROM node:16

# Nastavení pracovního adresáře uvnitř kontejneru
WORKDIR /app

# Kopírování package.json a package-lock.json do pracovního adresáře
COPY package*.json ./

# Instalace závislostí
RUN npm install

# Kopírování všech souborů do pracovního adresáře
COPY . .

# Exponování portu, na kterém aplikace běží (např. 3000)
EXPOSE 3000

# Příkaz pro spuštění aplikace (předpokládáme, že aplikace běží pomocí npm start)
CMD ["npm", "start"]

