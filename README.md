# 🚀 DevOps CI/CD Pipeline with Flask, Docker, GitHub Actions, and Kubernetes

This is a **fully automated CI/CD pipeline** for a containerized Python Flask application, built with industry-standard DevOps tools and deployed to Kubernetes (Minikube).

---

## 🧰 Tech Stack

- Python (Flask)
- Docker
- GitHub Actions
- Docker Hub
- Kubernetes (Minikube)
- Linux (Ubuntu VM)
- Git + GitHub

---

## 🗺️ Project Architecture


---

## ⚙️ CI/CD Workflow (GitHub Actions)

```yaml
name: CI/CD Pipeline

on:
  push:
    branches: [main]

jobs:
  build-and-deploy:
    runs-on: ubuntu-latest
    steps:
      - Checkout code
      - Set up Docker Buildx
      - Login to Docker Hub
      - Build & push Docker image
 ---

## ☸️ Kubernetes Setup
apiVersion: apps/v1
kind: Deployment
metadata:
  name: flask-app
spec:
  replicas: 1
  template:
    spec:
      containers:
        - name: flask-container
          image: <your-docker-username>/flask-devops:latest
          ports:
            - containerPort: 5000
   ---

## Service

apiVersion: v1
kind: Service
metadata:
  name: flask-service
spec:
  type: NodePort
  ports:
    - port: 5000
      targetPort: 5000
      nodePort: 30007
 ---

 ## 🧪 Local Testing
minikube start
kubectl apply -f k8s/
minikube service flask-service --url
---

💡 Highlights
✅ Full CI/CD Pipeline from GitHub to Kubernetes

✅ Secure Docker image build & push

✅ Real-time Kubernetes deployment using kubectl

✅ End-to-end automation with infrastructure as code
--
