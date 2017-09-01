### Installs a LAMP server with Wordpress using Saltstack

This salt state installs Apache, MySQL/Mariadb, PHP5 ***and*** Wordpress on Debian and CentOS minions.

- Installs Apache, MySQL/MariaDB and PHP packages on the minions.
- Installs and configures Wordpress in the default DocumentRoot
- Tested on Debian(8.1) and CentOS(7.1).  
  
Notes: 
 
- Currently the DocumentRoot is `/var/www/html`.
- Does `mysql_secure_installtion` after MySQL/MariaDB is installed.
- Installs `php-cli` and wp-cli for CLI-based operations.  
  
#### Saltstack By Example

- [Saltstack By Example | Part 1 | Installation](https://muchbits.com/saltstack-by-example1.html)
- [Saltstack By Example | Part 2 | Configuration](https://muchbits.com/saltstack-by-example2.html)
- [Saltstack By Example | Part 3 | Basic Commands](https://muchbits.com/saltstack-by-example3.html)
- [Saltstack By Example | Part 4 | Salt State Examples](https://muchbits.com/saltstack-by-example4.html)
