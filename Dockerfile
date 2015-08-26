FROM alpine:latest

RUN echo "http://dl-3.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories
RUN apk add --update stunnel ca-certificates && rm -rf /var/cache/apk/*

CMD ["stunnel", "/etc/stunnel/stunnel.conf"]
