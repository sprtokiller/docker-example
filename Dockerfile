FROM node:14

WORKDIR R:\VAP\docker-example

COPY server.js R:/VAP/docker-example/server.js

COPY index.html R:/VAP/docker-example/index.html

COPY package.json R:/VAP/docker-example/package.json

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]