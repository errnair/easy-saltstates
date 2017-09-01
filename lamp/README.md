### Installs a LAMP server using Saltstack

This salt state installs Apache, MySQL/Mariadb and PHP5 on Debian and CentOS minions.

- Installs Apache, MySQL/MariaDB and PHP packages on the minions.
- Tested on Debian(8.1) and CentOS(7.1).  
  
Notes: 
 
- Doesn't support the use of `vhosts` yet. Currently the DocumentRoot is `/var/www/html`.
- Copies an `info.php` after PHP5 is installed.
- Installs `php-cli` for CLI-based operations.
- Does `mysql_secure_installtion` after MySQL/MariaDB is installed.  
  
#### Saltstack By Example

- [Saltstack By Example | Part 1 | Installation](https://muchbits.com/saltstack-by-example1.html)
- [Saltstack By Example | Part 2 | Configuration](https://muchbits.com/saltstack-by-example2.html)
- [Saltstack By Example | Part 3 | Basic Commands](https://muchbits.com/saltstack-by-example3.html)
- [Saltstack By Example | Part 4 | Salt State Examples](https://muchbits.com/saltstack-by-example4.html)
