FROM alpine:3.17

RUN apk add --no-cache bash openssl
WORKDIR /usr/src
ADD init.sh /usr/src
ENTRYPOINT /usr/src/init.sh
