FROM platformatic/node-caged:25-slim

WORKDIR /server

COPY package*.json .

RUN npm i --omit=dev

COPY . .

CMD [ "npm", "start" ]
