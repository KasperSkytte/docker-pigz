FROM gliderlabs/alpine:3.9
LABEL org.opencontainers.image.authors="Kasper Skytte Andersen <kasperskytteandersen@gmail.com>"

RUN echo http://mirrors.dotsrc.org/alpine/v3.9/main > /etc/apk/repositories \
  && echo http://mirrors.dotsrc.org/alpine/v3.9/community >> /etc/apk/repositories \
  && apk update \
  && apk add --no-cache pigz=2.4-r0

ENTRYPOINT ["/usr/bin/pigz"]
CMD ["-h"]
