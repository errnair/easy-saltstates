{%- from "wp/wpcli/map.jinja" import wpcli %}

install_wp:
  cmd.script:
    - source: salt://wp/wpcli/files/install-wpcli.sh
    - cwd: {{ wpcli.docroot }}
    - user: root

#apache_restart:
#  module.wait:
#    - name: service.restart
#    - m_name: {{ wpcli.service }}
