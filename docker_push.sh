#!/bin/bash
docker logout
docker build -t sjk5766/express:0.0.1 .
#docker tag express:0.0.1 sjk5766/express:0.0.1
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push sjk5766/express:0.0.1
