#!/usr/bin/env bash

mkdir -p ./certs
openssl genpkey -algorithm RSA -out ./certs/private.key

openssl req -x509 -new -nodes -key ./certs/private.key -sha256 -days 397 -out ./certs/rootCA.crt \
  -subj "/CN=$DOMAIN Root CA"

openssl req -x509 -newkey rsa:4096 -sha256 -nodes -days 397 \
  -keyout ./certs/private.key \
  -out ./certs/certificate.crt \
  -subj "/CN=$DOMAIN Root CA"

cp -r ./certs/* /data || exit 1
