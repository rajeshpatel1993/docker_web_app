FROM node:12-alpine


WORKDIR /home/node/app/docker-web-app/

COPY package*.json ./


COPY . .
#COPY binance-api/ .


EXPOSE 8081
RUN npm install
ENTRYPOINT node index.js	
