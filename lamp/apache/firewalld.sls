open_apache_port:
  firewalld.present:
    - name: public
    - ports:
      - 80/tcp
      - 443/tcp
