FROM node:16.20.2-alpine3.18

WORKDIR /app

COPY . .

RUN npm install && \
    npm install -g serve && \
    REACT_APP_BACKEND_URL=http://localhost:8080 npm run build && \
    rm -rf node_modules

EXPOSE 5000

CMD ["serve", "-s" , "-l", "5000", "build"]