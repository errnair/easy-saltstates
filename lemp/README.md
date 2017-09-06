#### Installs a LEMP server using Saltstack  
  
- Installs Nginx from Nginx's repository - [Nginx Installation Link](https://www.nginx.com/resources/wiki/start/topics/tutorials/install/)
- Installs MySQL (5.5) on Debian-based OSes and Mariadb on RedHat-based OSes 
- Install PHP (PHP 5.6), and PHP-FPM, and copies a default `info.php` file to Nginx's default Document Root (`/usr/share/nginx/html/`)
- Edits `php.ini` and `www.conf`
- Configures Nginx's default configuration file (`default.conf`) to use PHP and PHP-FPM
