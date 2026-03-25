FROM node:alpine

WORKDIR /server

COPY package*.json .

RUN npm i --omit=dev

COPY . .

CMD [ "npm", "start" ]
