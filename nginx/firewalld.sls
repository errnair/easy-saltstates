open_nginx_port:
  firewalld.present:
    - name: public
    - ports:
      - 80/tcp
      - 443/tcp
      - 22/tcp
