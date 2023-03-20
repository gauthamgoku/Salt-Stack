/etc/systemd/system/process_monitor.service:
  file.copy:
    - source: home/admin/Monitoring-System/services/process_monitor.service

/etc/systemd/system/lambda_monitor.service:
  file.copy:
    - source: home/admin/Monitoring-System/services/lambda_monitor.service

process_monitor_service:
  service.running:
    - name: process_monitor
    - enable: True

lambda_monitor_service:
  service.running:
    - name: lambda_monitor
    - enable: True