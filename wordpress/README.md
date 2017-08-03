#### Installs a LAMP server with Wordpress using Saltstack (*wip*)

This salt state installs Apache, MySQL/Mariadb, PHP5 ***and*** Wordpress on Debian and CentOS minions.

- Installs Apache, MySQL/MariaDB and PHP packages on the minions.
- Installs and configures Wordpress in the default DocumentRoot
- Tested on Debian(8.1) and CentOS(7.1).  
  
Notes: 
 
- Currently the DocumentRoot is `/var/www/html`.
- Does `mysql_secure_installtion` after MySQL/MariaDB is installed.
- Installs `php-cli` and wp-cli for CLI-based operations.
