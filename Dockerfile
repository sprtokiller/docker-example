# Použití oficiálního Node.js obrazu jako základ
FROM node:18

# Nastavení pracovní složky v kontejneru
WORKDIR /usr/src/app

# Zkopírování package.json a package-lock.json (pokud existuje) do pracovní složky
COPY package*.json ./

# Instalace závislostí z package.json
RUN npm install

# Zkopírování všech ostatních souborů aplikace do kontejneru
COPY . .

# Otevření portu, na kterém bude aplikace běžet
EXPOSE 3000

# Příkaz pro spuštění aplikace
CMD ["npm", "start"]







#co delas kamo proc nefungujes
