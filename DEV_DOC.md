# Developer documentation
## Set up the environment from scratch (prerequisites, configuration files, secrets).  
### 1. Prerequisites (Debian Host)
Install Docker, Docker Compose, and Make: sudo apt update && sudo apt install -y docker.io docker-compose make  
Add your user to the Docker group: sudo usermod -aG docker $USER && newgrp docker  
Map login.42.fr to localhost:  echo "127.0.0.1 login.42.fr" >> /etc/hosts  
Create persistent data directories:  mkdir -p ~/data/mariadb ~/data/wordpress

### 2. Configuration Files
Each service uses its own configuration file inside the Docker network.  

NGINX — default.conf for TLS and PHP request forwarding  
WordPress — www.conf for PHP-FPM network listening  
MariaDB — 50-server.cnf for external container connections  

### 3. Secrets & Environment Variables
The project uses a root-level .env file for sensitive data.  

## Build and launch the project using the Makefile and Docker Compose.  
Start Infrastructure — make  
Equivalent Command — docker-compose up  

## Use relevant commands to manage the containers and volumes.  
### 1. Container Management
docker start nginx  
docker restart nginx  
docker stop nginx  
docker rm nginx  

### 2. Volume & Data Management
docker volume ls
docker volume rm data

## Identify where the project data is stored and how it persists.  
### 1. Where is the data stored?
Data is stored both inside the containers and on the host through Docker volumes.  

Container Paths — /var/www/html, /var/lib/mysql  
Host Paths — ~/data/wordpress, ~/data/mariadb  

### 2. How does it persist?
Docker containers are ephemeral by default, so their data is lost when removed.  
To persist data, Inception uses Bind Mounts or Docker Volumes.  