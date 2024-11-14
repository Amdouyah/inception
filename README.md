# Inception 42 Project

This project aims to deepen your understanding of system administration and containerization by setting up a small infrastructure with **Docker**. The infrastructure includes services like **MariaDB**, **WordPress**, and **Nginx**, using Docker and Docker Compose to simplify the management of multi-container applications.

## Project Structure

The following services will be set up:

- **MariaDB**: A relational database service.
- **WordPress**: The popular content management system.
- **Nginx**: A web server acting as a reverse proxy for WordPress.

## Requirements

- Docker
- Docker Compose
- Makefile
- A Unix-based operating system (Linux/Mac)

##Project Structure

```
inception/
├── Makefile
├── docker-compose.yml
├── requirements/
│   ├── nginx/
│   │   ├── Dockerfile
│   │   └── conf/
│   ├── wordpress/
│   │   ├── Dockerfile
│   │   └── conf/
│   └── mariadb/
│       ├── Dockerfile
│       └── conf/
└── srcs/
    └── .env
```

## How to Use

## Getting Started

1. Clone this repository:

    ```bash
    git clone https://github.com/Amdouyah/inception.git
    cd inception
    ```

2. **Create and configure your .env file in the srcs directory**:
   ```
    DOMAIN_NAME=your_domain
    CERT_=./requirements/tools/your_domain.crt
    KEY_=./requirements/tools/your_domain.key
    DB_NAME=your_database_name
    DB_ROOT=root
    DB_USER=your_database_user
    DB_PASS=your_database_password
    ```
    
3. **Build and Deploy**:

    To build the images and deploy the infrastructure, use the following command:

    ```bash
    $ make
    #or
    $ docker-compose up --build
    ```

4. **Stop and Clean Up**:

    To stop the containers and remove the generated images, volumes, and networks, use:

    ```bash
    $ make clean   # Remove containers
    $ make fclean  # Remove containers, images, and volumes
    ```

5. **Viewing Logs**:

    To view the logs from your running containers, use:

    ```bash
    $ docker logs <container_name>
    ```
6. **Accessing Services**
   - WordPress: https://your_domain
   - Database: localhost:3306
   - NGINX: https://your_domain:443


