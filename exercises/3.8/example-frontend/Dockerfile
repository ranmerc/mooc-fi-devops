FROM node:16.20.2-alpine3.18 AS builder

WORKDIR /app

COPY . .

RUN npm install && npm install -g serve

RUN REACT_APP_BACKEND_URL=http://localhost:8080 npm run build

FROM nginx:stable-alpine3.21-perl

COPY --from=builder /app/build /usr/share/nginx/html