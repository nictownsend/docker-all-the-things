#!/bin/bash

BASE_DIR=$(dirname "$(readlink -f "$0")")

for f in "${BASE_DIR}"/dockerfiles/*
do
  FILENAME=$(basename "${f}" | tr "[:upper:]" "[:lower:]")
  docker build -f "$f" -t "localhost:5000/${FILENAME%%.*}" "${BASE_DIR}"
done

mkdir -p "${HOME}/volumes"
pushd "${HOME}/volumes"
mkdir -p npm yarn cypress var/folders .cache pnpm
pushd npm
mkdir .npm .global
popd
pushd yarn
mkdir .global .cache .link
popd
popd