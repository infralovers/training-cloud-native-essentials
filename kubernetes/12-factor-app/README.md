# Prerequisites

## REDIS

```shell
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install redis bitnami/redis \
        --set image.tag=6.2 \
        --wait
```

## DAPR

```shell
helm repo add dapr https://dapr.github.io/helm-charts/
helm repo update
helm upgrade --install dapr dapr/dapr \
            --version=1.14 \
            --namespace dapr-system \
            --create-namespace \
            --wait
```
