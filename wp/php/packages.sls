{%- from "wp/php/map.jinja" import php %}

install_php:
  pkg.installed:
    - names: {{ php.pkgs }}
  service.running:
    - name: {{ php.service }}

apache_restart:
  module.wait:
    - name: service.restart
    - m_name: {{ php.service }}

copy_info_file:
  file.recurse:
    - name: /var/www/html
    - source: salt://wp/php/files/
    - target: /home/{{ php.docroot  }}
    - makedirs: True
