
FROM node:lts-alpine3.13

WORKDIR /src

COPY package*.json ./

RUN yarn install

COPY server.js ./

EXPOSE 3001

CMD yarn run start
