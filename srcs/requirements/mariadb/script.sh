service mariadb start
mariadb -e "create database $DB_NAME"
mariadb -e "CREATE USER $DB_USER@'%' IDENTIFIED BY '"$DB_PASS"'"
mariadb -e "grant all privileges on $DB_NAME.* TO '"$DB_USER"'@'%'"
service mariadb stop
exec mariadbd