#!/bin/bash

BASE_DIR=$(dirname "$(readlink -f "$0")")

for f in "${BASE_DIR}"/dockerfiles/*
do
  FILENAME=$(basename "${f}" | tr "[:upper:]" "[:lower:]")
  docker build -f "$f" -t "localhost:5000/${FILENAME%%.*}" .
done