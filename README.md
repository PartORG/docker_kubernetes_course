# PartORG/docker_kubernetes_course

A set of projects connected with use of Docker and Kubernetes. All these folders correspond to a part of a Udemy Complete Docker and Kubernetes Course.

[![Language](https://img.shields.io/github/languages/top/PartORG/docker_kubernetes_course?style=flat-square)](https://github.com/PartORG/docker_kubernetes_course)
[![License](https://img.shields.io/github/license/PartORG/docker_kubernetes_course?style=flat-square)](https://github.com/PartORG/docker_kubernetes_course/blob/main/LICENSE)

## Introduction

This repository contains a variety of projects designed to help you understand and master the use of Docker and Kubernetes. The primary language used is PHP, although some JavaScript/Node.js projects are also included. Each project includes a Dockerfile for containerization and often uses npm scripts for development and testing.

The course covers essential topics such as setting up Docker environments, deploying applications with Kubernetes, and managing data volumes. By working through these projects, you'll gain hands-on experience with both Docker and Kubernetes, preparing you to build robust and scalable applications in a containerized environment.

## Table of Contents

- [Features](#features)
- [How It Works](#how-it-works)
- [Technology Stack](#technology-stack)
- [Requirements](#requirements)
- [Installation](#installation)
- [Configuration](#configuration)
- [Quick Start](#quick-start)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Development](#development)
- [Testing](#testing)
- [Limitations](#limitations)

## Features

### Dockerized Applications
Each project is designed to run in a Docker container, ensuring consistent environments across development and production.

### Kubernetes Deployment
Some projects include Kubernetes deployment files (e.g., `deployment.yaml`, `service.yaml`), allowing you to deploy your applications on a Kubernetes cluster.

### Data Volume Management
Projects demonstrate how to manage data volumes using Docker, ensuring that application data persists even when containers are stopped or removed.

## How It Works

The projects in this repository follow a typical development workflow:

1. **Dockerfile**: Defines the container image with all necessary dependencies.
2. **npm Scripts**: Provides commands for starting the application (`npm run start`) and running tests (`npm run test`).
3. **Environment Variables**: Configurable through environment variables to customize runtime settings.

## Technology Stack

| Technology | Purpose |
|------------|---------|
| Node.js    | Runtime environment for JavaScript applications. |
| Docker     | Containerization platform for packaging and deploying applications. |
| Kubernetes | Orchestrates containerized applications at scale. |
| Express.js | Web application framework for Node.js. |
| body-parser | Middleware to parse incoming request bodies in a middleware before your handlers, available under the `req.body` property. |

## Requirements

- Docker installed on your machine.
- Basic knowledge of JavaScript and Node.js.

## Installation

To install and run any project in this repository, follow these steps:

1. Clone the repository:
   ```sh
   git clone https://github.com/PartORG/docker_kubernetes_course.git
   ```

2. Navigate to the desired project directory (e.g., `assignment-problem-1/node-app`).

3. Build and run the Docker container:
   ```sh
   docker build -t my-node-app .
   docker run -p 8080:8080 my-node-app
   ```

## Configuration

Most projects use environment variables for configuration. For example, in `data-volumes-01-starting-setup`, you can set the port using an environment variable:

```sh
docker run -e PORT=3000 -p 3000:3000 my-node-app
```

## Quick Start

To quickly start a project, use the following commands:

1. Navigate to the project directory.
2. Build and run the Docker container:
   ```sh
   docker build -t my-node-app .
   docker run -p 8080:8080 my-node-app
   ```

## Usage

To interact with a running project, use the following commands:

1. Access the application in your web browser at `http://localhost:8080`.
2. Run tests (if available):
   ```sh
   docker exec -it <container_id> npm run test
   ```

## Project Structure

```
PartORG/docker_kubernetes_course/
├── README.md
├── assignment-problem-1/
│   ├── instructions.txt
│   └── node-app/
│       ├── Dockerfile
│       ├── package.json
│       └── server.js
├── compose-01-starting-setup/
│   ├── backend/
│   │   ├── .dockerignore
│   │   ├── Dockerfile
│   │   ├── app.js
│   │   ├── logs/access.log
│   │   ├── models/goal.js
│   │   ├── package.json
│   │   └── ...
│   ├── frontend/
│   │   ├── .DS_Store
│   │   ├── .dockerignore
│   │   ├── Dockerfile
│   │   ├── README.md
│   │   ├── package-lock.json
│   │   └── ...
├── data-volumes-01-starting-setup/
│   ├── Dockerfile
│   ├── package.json
│   └── server.js
├── demo_js_app/
│   ├── Dockerfile
│   ├── app.mjs
│   ├── helpers.mjs
│   └── package.json
├── dummy_NodeJS_app/
│   ├── Dockerfile
│   ├── dummy/
│   │   └── test/
│   │       └── test.txt
│   ├── package.json
│   └── public/styles.css
└── kub-action-01-starting-setup/
    ├── Dockerfile
    ├── app.js
    └── package.json
```

## Development

To contribute to this repository, follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them.
4. Push your changes to your forked repository.
5. Open a pull request.

## Testing

Most projects include basic tests. To run tests, use the following command:

```sh
docker exec -it <container_id> npm run test
```

## Limitations

- Some projects may have limitations specific to their setup or dependencies.
- Always ensure you have the necessary permissions and resources before running Docker containers.

By following these guidelines, you'll be well on your way to mastering Docker and Kubernetes with this comprehensive course.