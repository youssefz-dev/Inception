# services are provided by the stack
NGINX — Secure web server and reverse proxy  
WordPress — PHP-FPM application service  
MariaDB — Persistent relational database  

# Start and stop the project
## To Start
Run the following command to build and start the infrastructure: make  

## To Stop
To stop the infrastructure without removing data: docker compose down  

# Access the website and the administration panel
## 1. Access the Website
Open your browser and visit: — https://login.42.fr  

## 2. Access the Administration Panel
WordPress Admin — https://login.42.fr/wp-admin  

#  Locate and manage credentials
## Locate Credentials
Sensitive data is stored in the root .env file.  

## Manage Credentials
To update passwords:  

Open the .env file  
Modify the variable values (KEY=VALUE)   

# Check that the services are running correctly.
Run the following command to view active containers: docker ps  