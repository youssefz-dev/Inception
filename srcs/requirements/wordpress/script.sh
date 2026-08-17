sleep 5
./wp-cli.phar config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=mariadb --allow-root
./wp-cli.phar core install --url=$URL --title="" --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASS --admin_email=$ADMIN_EMAIL --allow-root
./wp-cli.phar user create $USER2 $USER2_EMAIL --user_pass=$USER2_PASS --allow-root
exec php-fpm8.2 -F