{% from "wp/apache/map.jinja" import apache %}

install_apache:
  pkg.installed:
    - name: {{ apache.package }}
  group.present:
    - name: {{ apache.group }}
    - system: True
  user.present:
    - name: {{ apache.user }}
    - gid: {{ apache.group }}
    - system: True
  service.running:
    - name: {{ apache.service }}
    - enable: True

apache-reload:
  module.wait:
    - name: service.reload
    - m_name: {{ apache.service }}

apache-restart:
  module.wait:
    - name: service.restart
    - m_name: {{ apache.service }}


