FROM node:16-alpine

RUN apk update -qq && apk add --no-cache --virtual \
    build-deps \
    python3 \
    alpine-sdk \
    autoconf \
    libtool \
    automake

RUN mkdir -p /prebuilds && \
    cd /prebuilds && \
    npm init -y && \
    npm install sodium-native@3.1.1 && \
    apk del build-deps

ENV SODIUM_NATIVE_PREBUILD=/prebuilds/node_modules/sodium-native/

WORKDIR /app
