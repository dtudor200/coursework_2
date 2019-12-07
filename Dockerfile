#Download base image ubuntu 16.04
FROM ubuntu:16.04

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY server.js ./
COPY package.json ./

USER node

RUN npm install

COPY --chown=dtudor200:dtudor200 . .

EXPOSE 8080

CMD [ "node", "server.js" ]
