FROM node:14

COPY server.js

COPY index.html R:\VAP\docker-example\index.html

RUN npm install

EXPOSE 3000

CMD ["node", "server.js"]