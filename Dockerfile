#stage as builder
FROM node:alpine

WORKDIR . /app

#Copy the package.json to install dependencies
COPY package.json .

#Insatall the dependencies and make the folder
RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000 80

CMD ["npm","start"]

