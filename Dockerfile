FROM alpine

RUN apk add --update nodejs npm

WORKDIR /usr/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]
