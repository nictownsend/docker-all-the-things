#!/bin/bash

if [ -f .bashalias ]; then
   source .bashalias
fi

export PATH="$HOME/git/docker-all-the-things:${PATH}";
