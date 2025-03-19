#!/bin/bash

docker info > /dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "Docker Swarm não está inicializado. Inicializando..."
  docker swarm init
fi

echo "Building API image..."
docker build -t node-api ./api

echo "Building Frontend NGINX image..."
docker build -t node-frontend-nginx ./frontend

echo "Deploying stack..."
docker stack deploy -c docker-compose-swarm.yml stack_webapp

docker stack ps stack_webapp
