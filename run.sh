#!/bin/bash

for D in *; do
  if [ -d "${D}" ]; then
    docker-compose run --rm "${D}" npm install
    docker-compose run --rm "${D}" npm test
  fi
done
