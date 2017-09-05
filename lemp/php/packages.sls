{%- from "lemp/php/map.jinja" import php %}

install_php:
  pkg.installed:
    - names: {{ php.pkgs }}

nginx-restart:
  cmd.run:
    - name: systemctl restart nginx

copy_info_file:
  file.recurse:
    - name: /usr/share/nginx/html/
    - source: salt://lemp/php/files/
    - target: /home/{{ php.docroot  }}
    - makedirs: True
