docker_compose_up:
  cmd.run:
    - name: docker-compose up -d
    - cwd: /home/admin/Monitoring-System
    - runas: root
    - shell: /bin/bash