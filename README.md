# DevOps Project

This project sets up a complete DevOps environment using Docker and Terraform for the [AIDb web application](https://github.com/lillabajnai/aidb). It includes the following components:
- Angular frontend application
- Node.js backend application
- MongoDB database
- Jenkins for CI/CD
- Prometheus for monitoring
- Grafana for visualization
- Graylog for logging
- Nginx for reverse proxy and static file serving

## Prerequisites

- Docker
- Terraform
- Git

## Setup Instructions

### 1. Clone the Repository

```sh
git clone https://github.com/yourusername/devops-project.git
cd devops-project
```

### 2. Initialize Terraform
```sh
terraform init
```

### 3. Apply Terraform Configuration
```sh
terraform apply -auto-approve
```

### 4. Access the Applications
- Angular Frontend: http://aidb.com
- Node.jsBackend: http://172.100.0.10:5000
- MongoDB: Accessible within the Docker network
- Jenkins: http://172.100.0.60:8080
- Prometheus: http://172.100.0.70:9090
- Grafana: http://172.100.0.80:4000
- Graylog: http://172.100.0.90:9000
