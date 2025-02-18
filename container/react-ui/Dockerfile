FROM node:20-bullseye
WORKDIR /usr/src/app
COPY . .
RUN npm install

# Build the client
RUN cd client && npm i && npm run build

ENV APP_PORT=8080
EXPOSE 8080
EXPOSE 3000

ENTRYPOINT [ "npm" ]
CMD [ "run", "start" ]
