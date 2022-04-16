FROM node:latest as builder

RUN mkdir -p/app

WORKDIR /app

COPY . .

RUN npm install
RUN npm build --prod

CMD ["npm", "start"]