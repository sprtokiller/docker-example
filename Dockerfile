FROM node:14

COPY server.js R:/VAP/docker-example/server.js

COPY index.html R:/VAP/docker-example/index.html

COPY package.json R:/VAP/docker-example/package.json

RUN npm install

RUN npm start

EXPOSE 3000

CMD ["node", "server.js"]