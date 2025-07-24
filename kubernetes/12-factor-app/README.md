# Prerequisites

## REDIS

```shell
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm upgrade --install redis bitnami/redis \
    --version 20.6.3 \
    --namespace default \
    --set replica.replicaCount=0 \
    --set image.repository=redis \
    --set image.tag=8.0 \
    --wait
```

## DAPR

```shell
helm repo add dapr https://dapr.github.io/helm-charts/
helm repo update
helm upgrade --install dapr dapr/dapr \
    --version 1.14.4 \
    --namespace dapr-system \
    --create-namespace \
    --set global.logAsJson=true \
    --wait
```
