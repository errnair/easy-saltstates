chrony:
  pkg:
  - installed
  service:
  - running
  - enable: True
  - watch:
    - file: /etc/chrony.conf

'/etc/chrony.conf':
  file.managed:
  - source: salt://localdev/files/chrony.conf
  - user: root
  - group: root
  - mode: 644
