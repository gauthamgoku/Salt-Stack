install_package:
  pkg.installed:
    - pkgs:
      - docker
      - docker-compose
      - git

install_pip:
  cmd.run:
    - name: apt install python3-pip -y
    - runas: root
    - shell: /bin/bash

install_influxdb_client:
  pip.installed:
    - name: influxdb-client

install_psutil:
  pip.installed:
    - name: psutil

install_dot_env:
  pip.installed:
    - name: python-dotenv