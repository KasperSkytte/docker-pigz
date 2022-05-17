FROM gliderlabs/alpine
LABEL org.opencontainers.image.authors="Kasper Skytte Andersen <kasperskytteandersen@gmail.com>"

RUN apk update && apk add --no-cache pigz

ENTRYPOINT ["/usr/bin/pigz"]
CMD ["-h"]
