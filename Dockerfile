FROM node:12
MAINTAINER sjk5766 <wjdrnr6662@gmail.com>

WORKDIR /app
COPY package*.json ./

RUN npm install
COPY . .

EXPOSE 3000
CMD [ "npm", "start" ]
