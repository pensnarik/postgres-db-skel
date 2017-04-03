#!/bin/bash
docker build . -t %(database_name)s && docker-compose rm -f database && docker-compose up database
