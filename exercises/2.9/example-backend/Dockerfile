FROM golang:1.16-alpine3.15

WORKDIR /app

COPY . .

RUN go build

ENV PORT=8080

ENV REQUEST_ORIGIN=http://localhost

EXPOSE 8080

ENTRYPOINT [ "./server" ]