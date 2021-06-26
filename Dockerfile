FROM alpine:3.14.0

RUN apk add --no-cache git docker-cli

COPY ./builder.sh /builder.sh

WORKDIR /repository
ENTRYPOINT /builder.sh
