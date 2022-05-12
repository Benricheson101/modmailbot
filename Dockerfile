FROM node:14-alpine
RUN apk add python2 make g++ libc-dev
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm i --production
COPY . .
ENTRYPOINT [ "node", "src/index.js" ]
