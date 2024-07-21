# syntax=docker/dockerfile:1

ARG NODE_VERSION=20.11.0
FROM node:${NODE_VERSION}-alpine as base

WORKDIR /usr/src/app


COPY . .
RUN npm ci
RUN npm run build

EXPOSE 3000

# Run the application.
CMD npm start