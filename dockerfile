## STAGE 1: Build node.js web application ##
FROM node:latest as builder

RUN npm install
RUN npm install express
RUN npm install -g forever
RUN npm --version
RUN mkdir /test1

WORKDIR /test1
COPY ./sinapp.js /test1/

RUN forever start /test1/sinapp.js

EXPOSE 3000
