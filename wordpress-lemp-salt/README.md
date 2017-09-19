##### wordpress-lemp-salt 
  
###### Installs a LEMP server and Wordpress (using `wp-cli`) using Saltstack

- Installs Nginx, MySQL (5.5), PHP, PHP-FPM, and Wordpress
- Creates a virtual host (under Nginx) for the new user
- Uses `wpcli` to download and install Wordpress under `/home/{username}/public_html`

**Tested on:** Debian 8, Debian 9
