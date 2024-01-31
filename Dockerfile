# Use an official Node.js 18 image
FROM node:18

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update

COPY package*.json ./

RUN npm install --omit=dev

COPY . .

ENV NODE_ENV production

# run the app
CMD [ "npm", "start" ]

