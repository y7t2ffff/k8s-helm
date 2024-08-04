global:
  scrape_interval: {{ .Values.scrapeInterval }}
scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets: ['{{ .Values.prometheusTargets }}']