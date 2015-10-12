#!/bin/bash
set -x;
set -e;
mkdir -p wheels;

docker build -t leadlist-base -f base.docker .
docker build -t leadlist-builder -f build.docker .

docker run --rm \
       -v "$(pwd)":/application \
       -v "$(pwd)"/wheels:/wheels \
       leadlist-builder

docker build -t leadlist-app -f app.docker .
docker build -t leadlist-nginx -f nginx.docker .
