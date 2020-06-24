#!/bin/bash
docker logout
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t sjk5766/express:0.0.1 .
docker tag sjk5766/express:0.0.1 sjk5766/express:latest
docker push sjk5766/express:0.0.1
