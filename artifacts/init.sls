clone_artifacts:
  cmd.run:
    - name: git clone https://github.com/gauthamgoku/Monitoring-System.git
    - cwd: /home/admin
    - runas: root
    - shell: /bin/bash