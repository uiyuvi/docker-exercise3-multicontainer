FROM node:21-alpine

WORKDIR /usr/app

COPY package.json .
RUN npm install
COPY . /usr/app/

CMD ["npm","start"]

