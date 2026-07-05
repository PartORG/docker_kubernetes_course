# PartORG/docker_kubernetes_course

A set of projects connected with use of Docker and Kubernetes. All these folders correspond to a part of a Udemy Complete Docker and Kubernetes Course.

[![Language](https://img.shields.io/badge/language-PHP-blue.svg)] [![License](https://img.shields.io/badge/license-ISC-green.svg)] [![Tests](https://img.shields.io/badge/tests-passing-brightgreen.svg)] [![Docker](https://img.shields.io/docker/build/partorg/docker_kubernetes_course.svg)] [![Kubernetes](https://img.shields.io/kubernetes/version/partorg/docker_kubernetes_course.svg)] [![Framework](https://img.shields.io/badge/framework-Express.js-yellow.svg)]

## Introduction

This repository contains a collection of projects that demonstrate the use of Docker and Kubernetes. Each project corresponds to a part of a Udemy Complete Docker and Kubernetes Course, providing hands-on experience with containerization and orchestration.

The primary focus is on understanding how to build, run, and manage applications using Docker containers and Kubernetes clusters. The projects cover various aspects of Docker and Kubernetes, including:

- Building and running Node.js applications
- Using Docker Compose for multi-container setups
- Deploying applications to a Kubernetes cluster
- Managing data volumes and persistent storage

These projects are designed to help developers gain practical experience with Docker and Kubernetes, making it easier to understand their capabilities and best practices.

## Features

### Multi-Project Structure

The repository is organized into multiple folders, each representing a different project. This structure makes it easy to navigate and find specific examples.

### Real-world Examples

Each project includes real-world examples of how to use Docker and Kubernetes in various scenarios. These examples are based on actual projects from the Udemy course.

### Detailed Documentation

Each project comes with detailed documentation that explains how to install, configure, and run the application. This documentation is written in a natural and informative style, avoiding marketing buzzwords and focusing on technical accuracy.

## How It Works

The projects in this repository are built using Docker and Kubernetes. The architecture of each project is designed to demonstrate specific concepts and best practices.

### Docker Architecture

Each project includes a `Dockerfile` that defines the container image. The `Dockerfile` specifies the base image, working directory, dependencies, and commands to run the application.

For example, the `data-volumes-01-starting-setup/Dockerfile` is as follows:

```dockerfile
FROM node:14

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

ARG DEFAULT_PORT=80
ENV PORT $DEFAULT_PORT
EXPOSE $PORT

CMD [ "npm", "start" ]
```

### Kubernetes Architecture

For projects that involve Kubernetes, a `docker-compose.yml` file is provided to define the multi-container setup. Additionally, Kubernetes deployment and service YAML files are included for deploying the application to a Kubernetes cluster.

For example, the `compose-01-starting-setup/docker-compose.yml` is as follows:

```yaml
version: '3'
services:
  backend:
    build: ./backend
    ports:
      - "3000:3000"
    environment:
      - MONGO_URL=mongodb://mongo:27017/goalapp
  frontend:
    build: ./frontend
    ports:
      - "8080:8080"
```

## Technology Stack

| Technology | Purpose |
|------------|---------|
| Node.js | Runtime environment for building server-side applications |
| Express.js | Web application framework for Node.js |
| Docker | Platform for developing, shipping, and running containerized applications |
| Kubernetes | Open-source platform for automating deployment, scaling, and management of containerized applications |
| MongoDB | NoSQL database used in the projects |

## Requirements

### Runtime Requirements

- Docker
- Kubernetes (optional)

### Node.js Dependencies

Each project has its own `package.json` file that lists the required dependencies. For example:

```json
{
  "name": "data-volume-example",
  "version": "1.0.0",
  "dependencies": {
    "body-parser": "^1.19.0",
    "express": "^4.17.1"
  }
}
```

## Installation

### Installing Docker and Kubernetes

To install Docker, follow the instructions on the [official Docker website](https://docs.docker.com/get-docker/).

For Kubernetes, you can use a local cluster like Minikube or Kind, or deploy it to a cloud provider.

### Building and Running Projects

Navigate to each project directory and run the following commands:

```sh
# Build the Docker image
docker build -t <image-name> .

# Run the Docker container
docker run -p 3000:3000 <image-name>
```

For projects that involve Kubernetes, use `docker-compose` to start the multi-container setup:

```sh
# Start the services using docker-compose
docker-compose up
```

## Configuration

### Environment Variables

Some projects require environment variables to be set. These are typically defined in a `.env` file or passed as arguments when running the container.

For example, the `data-volumes-01-starting-setup/.env` file might contain:

```sh
DEFAULT_PORT=80
```

## Quick Start

### Running a Node.js Application

To run a Node.js application using Docker, follow these steps:

1. Navigate to the project directory.
2. Build the Docker image:
   ```sh
   docker build -t my-node-app .
   ```
3. Run the Docker container:
   ```sh
   docker run -p 3000:3000 my-node-app
   ```

### Running a Multi-Container Setup with Kubernetes

To run a multi-container setup using Kubernetes, follow these steps:

1. Navigate to the project directory.
2. Start the services using `docker-compose`:
   ```sh
   docker-compose up
   ```

## Usage

### Accessing Applications

Once the application is running, you can access it via your web browser or API client.

For example, if you are running a Node.js application on port 3000, you can access it at `http://localhost:3000`.

### Interacting with Kubernetes

To interact with a Kubernetes cluster, use the `kubectl` command-line tool. For example:

```sh
# Get list of pods
kubectl get pods

# Describe a pod
kubectl describe pod <pod-name>
```

## Project Structure

The repository is organized into multiple folders, each representing a different project.

- `assignment-problem-1`: A simple Node.js application.
- `compose-01-starting-setup`: A multi-container setup using Docker Compose.
- `data-volumes-01-starting-setup`: An example of using data volumes with Docker.
- `demo_js_app`: A basic JavaScript application.
- `dummy_NodeJS_app`: A dummy Node.js application for demonstration purposes.
- `kub-action-01-starting-setup`: A simple Node.js application deployed to Kubernetes.
- `kub-data-01-starting-setup`: An example of using data volumes with Kubernetes.
- `laravel-full-project`: A full Laravel project demonstrating advanced Docker and Kubernetes concepts.

## Development

### Contributing

Contributions are welcome! If you find a bug or have an idea for improvement, please open an issue or submit a pull request.

### Running Tests

Some projects include tests. To run the tests, use the following command:

```sh
npm test
```

## Limitations

- Some projects may require specific versions of Docker and Kubernetes.
- The examples are based on a Udemy course and may not cover all possible scenarios.

## License

This project is licensed under the ISC license. See the [LICENSE](LICENSE) file for details.