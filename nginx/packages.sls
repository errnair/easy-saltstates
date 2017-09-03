{% from "nginx/map.jinja" import nginx %}

install_nginx:
  pkg.installed:
    - name: {{ nginx.package }}
  group.present:
    - name: {{ nginx.group }}
    - system: True
  user.present:
    - name: {{ nginx.user }}
    - gid: {{ nginx.group }}
    - system: True
  service.running:
    - name: {{ nginx.service }}
    - enable: True

nginx-reload:
  module.wait:
    - name: service.reload
    - m_name: {{ nginx.service }}

nginx-restart:
  module.wait:
    - name: service.restart
    - m_name: {{ nginx.service }}
