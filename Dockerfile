FROM node:18-alpine3.15

WORKDIR /app

COPY /my-website/package*.json ./

RUN npm install

COPY /my-website .

RUN npm start -- --host 0.0.0.0 --port $PORT
