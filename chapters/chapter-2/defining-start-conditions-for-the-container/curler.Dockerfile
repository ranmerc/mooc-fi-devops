FROM alpine:3.22.0

RUN apk add curl

COPY ./script.sh ./script.sh

RUN chmod +x script.sh

ENTRYPOINT ["./script.sh"]