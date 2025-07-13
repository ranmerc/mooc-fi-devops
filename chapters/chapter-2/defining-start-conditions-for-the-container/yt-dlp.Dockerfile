FROM alpine:3.22.0

WORKDIR /downloads

RUN apk update && apk add curl python3

RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o ./yt-dlp

RUN chmod a+rx ./yt-dlp

ENTRYPOINT [ "./yt-dlp" ]

CMD ["https://www.youtube.com/watch?v=dQw4w9WgXcQ"]