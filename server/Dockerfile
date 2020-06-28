FROM node:12

MAINTAINER JeongKuk Seo <wjdrnr6662@gmail.com>

RUN apt-get update
RUN apt-get install -y curl \
                        wget \
                        git \
                        vim

WORKDIR /source
COPY . .

RUN npm install
RUN npm install -g nodemon
CMD [ "nodemon", "-L", "app.js"]