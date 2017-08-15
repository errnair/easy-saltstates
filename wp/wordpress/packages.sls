{%- from "wp/wordpress/map.jinja" import wordpress %}

install_wp:
  cmd.script:
    - source: salt://wp/wordpress/files/install-wpcli.sh
    - cwd: {{ wordpress.docroot }}
    - user: root

#apache_restart:
#  module.wait:
#    - name: service.restart
#    - m_name: {{ wordpress.service }}
