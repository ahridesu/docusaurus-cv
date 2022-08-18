FROM node:18-alpine3.15

WORKDIR /app

COPY /my-website/package*.json ./

RUN npm install

COPY /my-website .

ENV PORT=3000

EXPOSE 3000

CMD [ "npm", "start", "--", "--host", "0.0.0.0"]