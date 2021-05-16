FROM alpine:3

RUN apk update && apk upgrade \
    && apk add ca-certificates \
    && rm -rf /var/cache/apk/* \
    && addgroup -g 1000 -S fn && adduser -S -u 1000 -G fn fn

