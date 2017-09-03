vim:
  pkg:
  - installed

'/etc/vimrc':
  file.managed:
  - source: salt://localdev/files/vimrc
  - user: root
  - group: root
  - mode: 644
