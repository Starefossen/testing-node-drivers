#!/bin/bash

docker-compose stop
docker-compose rm -fv

for D in *; do
  if [ -d "${D}" ]; then
    echo "[${D}] installing dependencies..."
    LOG=$(docker-compose run --rm "${D}" npm install)
    sleep 2

    if [ "$?" -ne "0" ]; then
      echo "${LOG}";
    fi

    echo "[${D}] running tests..."
    LOG=$(docker-compose run --rm "${D}")

    if [ "$?" -ne "0" ]; then
      echo "${LOG}";
    fi
  fi
done
