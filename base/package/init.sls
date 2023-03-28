install_git:
  pkg.installed:
    - pkgs:
      - git

install_docker:
  cmd.run:
    - name: |
        apt-get update
        sudo apt-get install apt-transport-https ca-certificates curl gnupg2 lsb-release
        mkdir -m 0755 -p /etc/apt/keyrings
        curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmo -o /etc/apt/keyrings/docker.gpg
        echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
        apt-get update
        apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
    - runas: root
    - shell: /bin/bash

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