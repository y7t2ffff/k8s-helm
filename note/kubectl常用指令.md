常用 kubectl 命令

## 查看集群信息：

```bash
kubectl cluster-info
```

## 获取当前上下文：

```bash
kubectl config current-context
```

## 列出所有命名空间：

```bash
kubectl get namespaces
```

## 获取资源：

### Pods:

```bash
kubectl get pods
```

### Services:
```bash
kubectl get services
```

### Deployments:
```bash
kubectl get deployments
```

### 查看特定资源的详细信息：

```bash
kubectl describe pod <pod-name>
```

### 创建资源：

```bash
kubectl apply -f <file>.yaml
```

### 删除资源：

```bash
kubectl delete pod <pod-name>
```

### 查看日志：

```bash
kubectl logs <pod-name>
```

### 进入 Pod：

```bash
kubectl exec -it <pod-name> -- /bin/bash
```

### 提高效率的快捷键和技巧
命令补全： 在使用 kubectl 时，您可以使用 Tab 键进行命令和资源的补全。例如，在输入 kubectl get 后按 Tab 键，可以自动补全可用的资源类型。

使用别名： 为了加快操作速度，您可以在 ~/.bashrc 或 ~/.zshrc 中添加别名。例如：

```bash
alias k=kubectl
```

### 使用 --all-namespaces： 在列出资源时，您可以添加 --all-namespaces 标志来查看所有命名空间中的资源：

```bash
kubectl get pods --all-namespaces
```

### 滚动回滚： 使用 kubectl rollout 命令可以快速查看和回滚到以前的版本：

```bash
kubectl rollout history deployment <deployment-name>
kubectl rollout undo deployment <deployment-name>
```

### 使用 -o 选项获取不同输出格式： 您可以使用 -o 选项以 JSON 或 YAML 格式输出结果：

```bash
kubectl get pods -o yaml
```

### 使用 -l 选项根据标签过滤资源： 例如，获取具有特定标签的 Pods：

```bash
kubectl get pods -l app=my-app
```

### 组合命令
一次性执行多个命令： 您可以将命令链在一起，例如获取 Pods 和其状态：
```bash
kubectl get pods && kubectl get svc
```