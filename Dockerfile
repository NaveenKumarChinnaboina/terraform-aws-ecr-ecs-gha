From node:14-alpine3.15

WORKDIR /app

USER root

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]