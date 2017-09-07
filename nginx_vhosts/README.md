#### Configure Nginx vHosts  
  
**NOTE 1:**  ***DOES NOT*** install Nginx (check out [this link](https://github.com/rn4ir/easy-saltstates/tree/master/nginx) for Nginx installation)  
**NOTE 2:**  Has only been tested on Debian 8 (and 9).
  
##### Requirements
  
- Nginx and PHP (and PHP5-FPM) need to be installed.
  
##### Inner Workings

- Creates a new user with shell access (`/bin/bash`)
- Creates a directory structure for the new user - blank log files, `public_html`, a blank index.html file and an `info.php` file:
```
/home/wptest/
├── logs
│   ├── access.log
│   └── error.log
└── public_html
    ├── index.html
    └── info.php
```
- Creates `sites-avalable` and `sites-enabled` directories
- Creates a configuration file under `sites-available` using an available Jinja template
- Creates a symlink to `sites-enabled`
- Adds `include /etc/nginx/conf.d/*.conf;` to the main Nginx configuration
- Restarts `nginx` and php5-fpm  
