FROM golang:1.16-alpine3.15 AS builder

WORKDIR /app

COPY . .

# Need this flag to create standalone binary that can run in a scratch image
RUN CGO_ENABLED=0 go build

FROM scratch

COPY --from=builder /app/server /

ENV PORT=8080

ENV REQUEST_ORIGIN=http://localhost:5000

EXPOSE 8080

CMD [ "/server" ]