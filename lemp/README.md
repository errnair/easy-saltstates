#### Installs a LEMP server using Saltstack  
  
- Installs Nginx from Nginx's repository - [Nginx Installation Link](https://www.nginx.com/resources/wiki/start/topics/tutorials/install/)
- Installs MySQL (5.5) on Debian-based OSes and Mariadb on RedHat-based OSes 
- Install PHP (PHP 5.6), and PHP-FPM, and copies a default `info.php` file to Nginx's default Document Root (`/usr/share/nginx/html/`)
- Edits `php.ini` and `www.conf`
- Configures Nginx's default configuration file (`default.conf`) to use PHP and PHP-FPM  
  
#### Usage  
  
- Setup the `top.sls` file with the minions' names/hostnames
- Copy the pillar file over to the pillar location
- Run `salt '*' state.apply`  
  
#### Expected output  
  
- Accessing the Minion on the browser, using the minion's IP should yield Nginx's default page.
- Accessing the PHP info page on the browser, using the minion's IP (`http://IP-Address/info.php`) should yield the PHP info page.
