install_git:
  cmd.run:
    - name: apt-get install git-all -y
    - runas: root
    - shell: /bin/bash

install_docker:
  cmd.run:
    - name: |
        apt-get update
        sudo apt-get install apt-transport-https ca-certificates curl gnupg2 lsb-release
        mkdir -m 0755 -p /etc/apt/keyrings
        curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmo -o /etc/apt/keyrings/docker.gpg
        echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
        apt-get update
        apt-get install docker-ce docker-ce-cli containerd.io -y
    - runas: root
    - shell: /bin/bash

docker_compose:
  cmd.run:
    - name: |
        curl -L https://github.com/docker/compose/releases/download/1.25.3/docker-c$
        chmod +x /usr/local/bin/docker-compose
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