{%- from "wordpress-lemp-salt/wp_user/map.jinja" import wpuser %}

create-wp-account:
  user.present:
    - name: {{ wpuser.username }}
    - shell: /bin/bash

create-home-subdirs:
  file.recurse:
    - name: /home/{{ wpuser.username }}/
    - source: salt://wordpress-lemp-salt/wp_user/files/{{ wpuser.username }}/
    - makedirs: True

