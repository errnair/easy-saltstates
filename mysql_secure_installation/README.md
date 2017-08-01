#### Perform `mysql_secure_installation` using a Salt state

After MySQL/MariaDB is installed, usually the `mysql_secure_installation` script is run on a server. This performs the following tasks:

- Set a password for the MySQL `root` user (which is different from the server's `root` user). By default, MySQL's `root` password is blank.
- Delete the `anonymous` MySQL users, i.e. users with the empty string as their MySQL username (`user=''`)
- Ensure that the MySQL `root` user cannot log in remotely.
- Remove the MySQL database named called `test`.

#### Regarding this Salt state:

- The MySQL root password is stored in the pillar file: `pillar_example/mysql.sls`
