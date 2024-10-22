FROM node:18-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY package*.json /usr/src/app

RUN npm install --force --loglevel verbose

COPY . /usr/src/app

EXPOSE 4000

CMD [ "npm", "start"]
