#!/bin/bash

SWARM_STATUS=$(docker info --format '{{.Swarm.LocalNodeState}}')
echo "Current Swarm status: $SWARM_STATUS"
if [ "$SWARM_STATUS" != "active" ]; then
    docker swarm init
fi

echo "Building API image..."
docker build -t node-api-2 ./api

echo "Building Frontend NGINX image..."
docker build -t node-frontend-nginx-2 ./frontend

echo "Deploying stack..."
docker stack deploy -c docker-compose-swarm.yml stack_webapp_2