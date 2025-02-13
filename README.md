# Docker Compose API application

## Overview
This project is a simple REST API built with Java and Spring Boot. 
It is designed to manage a database through HTTP methods, allowing users to interact with the system efficiently. 
The API features basic CRUD operations alongside database integration. 
Containerization is used for easy deployment.

---

## Features

- REST architecture using Spring Boot.
- PostgreSQL integration for storage persistence.
- Nginx for reverse-proxy. 
- Usage of Docker environment for ease of deployment.
- Code is modular and easily scalable.
- Basic error handling and response formatting.

---

## Prerequisites

To run this project locally or in a containerized environment, ensure you have installed on your system either
**Docker Engine** or **Docker Desktop** (in case you use Windows).

For running the application alone without containerizing I recommend using **IntellijIDEA** for ease of use.

Ensure you have Git or Git Bash installed on your machine.

---

## Setup and Installation
### 1. Create a new directory/ open an existing empty directory.
### 2. Open a terminal window in the directory, create a local repository.
### 3. Clone the Repository
```bash
git clone https://github.com/FaZ3r/DockerComposeAPI-nginx.git
```

### 4. Configure the Application
Update the `application.properties` or `application.yml` file located in the `src/main/resources` directory with your PostgreSQL credentials:

```properties
spring.datasource.url=jdbc:postgresql://localhost:5433/your_database
spring.datasource.username=your_username
spring.datasource.password=your_password
```

### 5. Build and run the docker-compose application

```bash
docker-compose -p java_api up
```

---

## API Endpoints

### Base URL: `http://localhost:80`
### Resource Endpoints
- `POST /Database/studentsTable` - Add/Create a new student.
- `GET /Database/studentsTable` - Show all students.
- `GET /Database/studentsTable/{id}` - Fetch a student by ID.
- `PUT /Database/studentsTable/{id}` - Update a student by their ID.
- `DELETE /Database/studentsTable/{id}` - Delete a student by ID.
of the application.