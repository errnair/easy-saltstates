{%- from "lamp/mysql/map.jinja" import mysql %}

install_mysql:
  pkg.installed:
    - names: {{ mysql.pkgs }}
  service.running:
    - name: {{ mysql.service }}
    - enable: True

mysql-restart:
  module.wait:
    - name: service.restart
    - m_name: {{ mysql.service }}


