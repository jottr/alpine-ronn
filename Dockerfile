FROM alpine:3.8

MAINTAINER github.com/jottr

RUN apk update && apk upgrade \
      && apk add ronn

RUN mkdir /files
WORKDIR /files
VOLUME ["/files"]

ENTRYPOINT ["ronn"]
