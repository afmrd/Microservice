# Microservice Deployment

## Overview

This repository contains a simple Python microservice, a Dockerfile to package the application, Kubernetes manifests to deploy it into a Minikube cluster, and a script to automate the build and deployment process.

## Prerequisites

- Minikube installed and running
- Docker installed
- Kubectl installed

## File Descriptions

- **Dockerfile**: Used to build the Docker image of the microservice.
- **fastapi-deployment.yaml**: Kubernetes manifest for deploying the application.
- **build-and-deploy.sh**: Script that automates the process of building, packaging, and deploying the application.
- **main.py**: Simple Python microservice script.
- **requirements.txt**: Python dependencies for the application.

---

# Docker

## Create Docker Image

To create the Docker image, run the following command:

```bash
docker build -t <image-name> .
```

In this case, the image name used is `resized-fastapi`.

## Run the Docker Image

To run the built image, use the following command:

```bash
docker run -p 8000:8000 resized-fastapi
```

## Access the Microservice

Once the container is running, you can access the service by:

- Clicking the link provided in the terminal, or
- Opening your browser and navigating to `localhost:8000/docs`.

---

# Kubernetes

## Create Deployment & Service Configuration

You can create two separate configuration files or combine them into a single file. The Kubernetes deployment and service configuration is defined in `fastapi-deployment.yaml`.

## Apply the Configuration

To apply the Kubernetes configuration, run:

```bash
kubectl apply -f <file-name.yaml>
```

In this case, the file name is `fastapi-deployment.yaml`.

## Verify the Pod and Service

After deploying, check the status of the pod and service using:

```bash
kubectl get pods
kubectl get services
```

---

# Automation

## Create a Bash Script to Automate the Deployment

The script `build-and-deploy.sh` automates the process of building the Docker image, packaging it, and deploying it to Minikube. Each step is described in the script.

## Run the Bash Script

To execute the script, follow these steps:

1. Change the file permissions to make the script executable:
    
    ```bash
    chmod +x build-and-deploy.sh
    ```
    
2. Run the script:
    
    ```bash
    ./build-and-deploy.sh
    ```
    

---

## Usage Instructions

### For Non-local Users

1. Clone the repository:
    
    ```bash
    git clone https://github.com/afmrd/Microservice.git
    ```
    
2. Ensure each step mentioned above works properly on your system.
3. Run the `build-and-deploy.sh` script to check if the script works properly.
