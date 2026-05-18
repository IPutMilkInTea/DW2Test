#!/bin/bash

IMAGE_NAME=demo-site-image
CONTAINER_NAME=demo-site-container

docker build -t $IMAGE_NAME .

docker rm -f $CONTAINER_NAME 2>/dev/null

docker run -d \
  --name $CONTAINER_NAME \
  -p 8888:80 \
  $IMAGE_NAME

echo "Container gestart op http://localhost:8888/"
