FROM node:18-alpine

WORKDIR /app

COPY package.json package-lock.json /app/

RUN npm ci

COPY . .

CMD ["node", "index.js"]