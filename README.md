# Description
Inception is a System Administration project about containerization using Docker.  	

The goal is to build a secure multi-container infrastructure with Docker Compose.  	

The setup includes:  
NGINX — secure web server with TLSv1.2/TLSv1.3  
WordPress + PHP-FPM — application service  
MariaDB — persistent database service  

## 1. Infrastructure
Inception uses Docker to run isolated services on a Debian host.  
Instead of installing components directly on the OS, each service runs inside its own container.  

## 2. Included Sources:
Dockerfiles — Custom Debian-based images for NGINX, WordPress, and MariaDB  
Configurations — NGINX, PHP-FPM, and MariaDB configuration files  
Automation — Makefile and Docker Compose setup for managing the stack  

## 3. Main Design Choices:
Base Image — Debian Bookworm for all containers  
Initialization — Shell scripts for service startup  
Security — NGINX with TLS 1.3 and isolated backend services  

## 4. Key Comparisons
### 1. Virtual Machines vs. Docker  
Virtual Machines — Run a full guest OS with its own kernel  
Docker — Containers share the host kernel for lightweight and fast execution  

### 2. Secrets vs. Environment Variables  
Environment Variables — Simple but insecure for sensitive data  
Secrets — Securely managed credentials mounted at /run/secrets/  

### 3. Docker Network vs. Host Network  
Docker Network — Isolated network for container communication  
Host Network — The host machine’s physical network interface for external communication  

### 4. Docker Volumes vs. Bind Mounts  
Docker Volumes — Docker-managed persistent storage  
Bind Mounts — Host directories mapped into containers  

# Instructions
## 1. Prerequisites  
OS — Linux (native or VM)  
Tools — Docker, Docker Compose, and Make  
Domain — Map login.42.fr to 127.0.0.1 in /etc/hosts  

## 2. Installation & Compilation
The project is managed through a root-level Makefile.  
Build & Start — make  

## 3. Execution & Verification
Status — docker ps  
Access — https://login.42.fr  
SSL — Accept the self-signed certificate warning  
Logs — docker compose logs -f  

# Resources
Reference — Docker Deep Dive by Nigel Poulton (2025 Edition)  
