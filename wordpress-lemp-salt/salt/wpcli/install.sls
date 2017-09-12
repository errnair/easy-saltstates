{%- from "wordpress-lemp-salt/wpcli/map.jinja" import wpcli %}

install_wp:
  cmd.script:
    - source: salt://wordpress-lemp-salt/wpcli/files/install-wpcli.sh
    - cwd: {{ wpcli.docroot }}
    - user: root
