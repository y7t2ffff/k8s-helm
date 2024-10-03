# 說明
安裝前請先確認 Kind / helm 是否安裝

本安裝檔包含 Wildfly 及 Mariadb。

## 使用步驟

- create Clustor
```bash
kind create cluster -n home --config kind/kind-config.yaml
```
-n home: 建立 home cluster 
--config kind/kind-config.yaml: 使用kind-config.yaml設定檔，包含wildfly/mariadb export port

- create namespace
kubectl create namespace backend

- install helm
```
helm install backend .
```

- uninstall helm
```
heml uninstall backend
```