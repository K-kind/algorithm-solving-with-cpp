FROM alpine:3.13
WORKDIR /home
RUN apk update --no-cache && \
  apk add --no-cache g++
