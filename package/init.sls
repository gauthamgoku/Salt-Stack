install_package:
  pkg.installed:
    - pkgs:
      - docker
      - docker compose
      - git
      - pip3

install_influxdb_client:
  pip.installed:
    - name: influxdb-client

install_psutil:
  pip.installed:
    - name: psutil

install_dot_env:
  pip.installed:
    - name: python-dotenv