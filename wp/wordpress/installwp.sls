{%- from "wp/wordpress/map.jinja" import wordpress %}

{% set mysql_root_pass = salt['pillar.get']('mysql:server:root_password', salt['grains.get']('server_id')) %}
{% set wp_pass = salt['pillar.get']('mysql:server:wp_password', salt['grains.get']('server_id')) %}
{% set wp_host= salt['pillar.get']('mysql:server:host', salt['grains.get']('server_id')) %}

install_wp:
  cmd.script:
    - source: salt://wp/wordpress/files/install-wp.sh
    - cwd: {{ wordpress.docroot }}
    - user: root

config_wp:
  cmd.run:
    - cwd: /var/www/html/
    - name: 'wp core config --dbname=wptest --dbuser=wptest --dbpass={{ wp_pass }} --dbhost={{ wp_host }} --dbprefix=wp_ --allow-root'
