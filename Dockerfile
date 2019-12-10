 #Download base image ubuntu 16.04
FROM node:10-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
RUN apk update && apk add bash

WORKDIR /home/node/app

COPY server.js ./
COPY package.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080
EXPOSE 80

CMD [ "node", "server.js" ]
