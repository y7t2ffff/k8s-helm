# prometheus.yml
global:
  scrape_interval: {{ .Values.prometheus.scrapeInterval }}
scrape_configs:
- job_name: 'prometheus'
  static_configs:
  - targets: {{ .Values.prometheus.prometheusTargets }}