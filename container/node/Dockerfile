FROM node:20-bullseye

WORKDIR /usr/src/app

COPY . .
RUN npm install

ENV APP_PORT=4000
EXPOSE 4000

CMD [ "node", "app.js" ]
