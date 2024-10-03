

## Cluster
### 建立Cluster

```
kind create cluster -n monotor
```
參數說明
-n 名稱

建立namespace

## Namespace

### 取得所有namespace

```
kubectl config get-contexts
```

### 變更namesapce
```
kubectl config set-context my-vsphere-cluster --namespace=helm-test
```

建立helm 基本架構
helm create mychart

# 建立 meriadb pod

增加 bitnami repo
```
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
```

# 轉 Port

kubectl port-forward service/release-name-wildfly 8080:8080

kubectl port-forward service/release-name-mariadb 3306:3306