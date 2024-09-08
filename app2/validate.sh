#!/bin/bash

# 設定 Helm Chart 路徑
CHART_PATH="."

# 設定輸出檔案
OUTPUT_FILE="result.yaml"

# 檢查 promtool 是否已安裝
if ! command -v promtool &>/dev/null; then
    echo "promtool could not be found. Please install Prometheus tools."
    exit 1
fi

# 檢查 prometheus config
#promtool check config config/alertmanager/config/alertmanager.yml

# 檢查執行狀況
#if [ $? -eq 0 ]; then
#    echo "Alertmanager config check passed."
#else
#    echo "Alertmanager config check failed."
#    exit 1
#fi

# 檢查 prometheus config
promtool check config config/prometheus/config/prometheus.yml

# 檢查執行狀況
if [ $? -eq 0 ]; then
    echo "Prometheus config check passed."
else
    echo "Prometheus config check failed."
    exit 1
fi

# 檢查 prometheus rules
promtool check rules config/prometheus/rules/*.yml

# 檢查執行狀況
if [ $? -eq 0 ]; then
    echo "Prometheus rules check passed."
else
    echo "Prometheus rules check failed."
    exit 1
fi

# 執行 helm template 並將輸出寫入 result.yaml
helm template $CHART_PATH >$OUTPUT_FILE

# 檢查執行狀況
if [ $? -eq 0 ]; then
    echo "Helm template generated successfully and saved to $OUTPUT_FILE."
else
    echo "Failed to generate Helm template."
    exit 1
fi
