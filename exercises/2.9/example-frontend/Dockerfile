FROM node:16.20.2-alpine3.18

WORKDIR /app

COPY . .

RUN npm install && npm install -g serve

RUN REACT_APP_BACKEND_URL=http://localhost/api npm run build

EXPOSE 5000

CMD ["serve", "-s" , "-l", "5000", "build"]