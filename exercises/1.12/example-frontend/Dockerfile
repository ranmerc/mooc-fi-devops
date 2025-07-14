FROM node:16.20.2-alpine3.18

WORKDIR /app

COPY . .

RUN npm install && npm install -g serve

RUN npm run build

CMD ["serve", "-s" , "-l", "5000", "build"]