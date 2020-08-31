## STAGE 1: Build node.js web application ##
FROM node:latest as builder

RUN npm install
RUN npm install express
RUN npm install -g forever
RUN npm --version
RUN rm -rf /SiNodeApp
RUN mkdir /SiNodeApp

WORKDIR /SiNodeApp
COPY ./sinapp.js /SiNodeApp/

RUN forever start /SiNodeApp/sinapp.js

EXPOSE 3000
