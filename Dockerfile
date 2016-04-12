FROM nginx:stable-alpine

MAINTAINER Chris Saunders <slapheadted@gmail.com>

COPY . /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

RUN apk add --update nodejs

RUN npm install -g bower@1.7.7

RUN npm install -g bower

RUN bower --allow-root install -g

#COPY ./dist /usr/share/nginx/html
