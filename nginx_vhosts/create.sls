{%- from "nginx_vhosts/map.jinja" import wpuser %}

create-wp-account:
  user.present:
    - name: {{ wpuser.username }}
    - shell: /bin/bash

create-home-subdirs:
  file.recurse:
    - name: /home/{{ wpuser.username }}/
    - source: salt://nginx_vhosts/files/{{ wpuser.username }}/
    - makedirs: True

