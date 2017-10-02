{% from "wordpress-lemp-salt/nginx/map.jinja" import nginx %}

nginx-repo:
  file.managed:
    - makedirs: True
{% if grains['os_family'] == 'Debian' %}
    - name: /etc/apt/sources.list.d/nginx.list
    - source: salt://wordpress-lemp-salt/nginx/repofiles/nginx.list
{% elif grains['os_family'] == 'RedHat' %}
    - name: /etc/yum.repos.d/nginx.repo
    - source: salt://wordpress-lemp-salt/nginx/repofiles/nginx.repo
{% endif %}
