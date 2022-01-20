#!/bin/bash

for f in dockerfiles/*
do
  FILENAME=$(basename "${f}" | tr "[:upper:]" "[:lower:]")
  docker build -f "$f" -t "localhost:5000/${FILENAME%%.*}" .
done