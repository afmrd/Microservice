#!/bin/bash

# Exit immediately if a command exits with a non-zero status
#set -e

# Step 1: Start Minikube if not already running
echo "Starting Minikube..."
minikube start || echo "Minikube is already running"

# Step 2: Build the Docker image inside Minikube
echo "Building Docker image inside Minikube..."
eval $(minikube docker-env)
docker pull afmrd/resized-fastapi
docker build -t afmrd/resized-fastapi .

# Step 3: Apply Kubernetes manifests
echo "Applying Kubernetes manifests..."
kubectl apply -f fastapi-deployment.yaml

# Step 4: Check the services
kubectl get services

# Step 5: Get the NodePort and display the endpoint
minikube service fastapi-service
