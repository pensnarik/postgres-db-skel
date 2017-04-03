#!/bin/bash

if [[ -z "$1" || -z "$2" ]]; then
    echo "Usage: init.sh path database_name"
    exit 1
fi

if [[ -d "$1" ]]; then
    echo "Directory already exists"
fi

mkdir -p "$1"

cp -rv ./db "$1"/
cp -rv ./docker "$1"/
cp ./Dockerfile "$1"/
cp ./docker-compose.yml "$1"/
cp ./rebuild.sh "$1"/
sed -i "s/%(database_name)s/$2/g" "$1"/docker-compose.yml "$1"/rebuild.sh "$1"/docker/docker-entrypoint-initdb.d/init.sh "$1"/db/deploy.sh
