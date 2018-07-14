#!/bin/bash
imageName=rizalibnu/jsonplaceholder
containerName=jsonplaceholder

echo Building image...
docker build -t $imageName -f Dockerfile  .

echo Delete old container...
docker rm -f $containerName

echo Run new container...
docker-compose up -d

echo Prune images...
docker image prune -f
