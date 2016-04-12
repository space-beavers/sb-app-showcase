FROM nginx:stable-alpine

MAINTAINER Chris Saunders <slapheadted@gmail.com>

COPY . /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

RUN apk add --update git

RUN apk add --update nodejs

RUN git config --global url."https://".insteadOf git://

RUN npm install -g bower@1.7.7

RUN npm install -g bower

RUN bower --allow-root install -g

RUN mv /usr/share/nginx/html/dist /usr/share/nginx/html2

RUN rm -rf /usr/share/nginx/html 

RUN mv /usr/share/nginx/html2 /usr/share/nginx/html
