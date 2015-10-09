#!/bin/bash
set -x;
set -e;
mkdir -p wheelhouse;

docker build -t leadlist-base -f base.docker .;

docker build -t leadlist-builder -f build.docker .;
docker run --rm \
       -v "$(pwd)":/application -v "$(pwd)"/wheelhouse:/wheelhouse \
       leadlist-builder;

docker build -t leadlist-run -f run.docker .;

