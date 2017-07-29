#### Installs a LAMP server using Saltstack (*wip*)

- Installs Apache, MySQL/MariaDB and PHP packages on the minions
- Tested on Debian(8.1)
- `[root@deploy salt]# salt 'minion1.debian81.server' state.sls webserver`

*TODO:*

- Install MySQL/MariaDB
- Run `mysql_secure_installation`
- Copy config files
- CentOS configuration
