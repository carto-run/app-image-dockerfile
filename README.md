# app-image-dockerfile

## Creating the Workload

```
tanzu apps workload create app-image-dockerfile \
  --namespace dev \
  --image ghcr.io/carto-run/app-image-dockerfile:latest \
  --label app.kubernetes.io/part-of=app-image-dockerfile \
  --type web \
  --yes
```

## Logs

```
tanzu apps workload tail app-image-dockerfile
```

## Configuration

| Item            | Config                                                                                |
| --------------- | ------------------------------------------------------------------------------------- |
| Scan Policy     | [default](resources/scan-policy.yaml)                                                 |
| Pipeline        | [developer-defined-tekton-pipeline](resources/developer-defined-tekton-pipeline.yaml) |
| tap-values.yaml | na                                                                                    |
| Supply Chain    | scanning-image-scan-to-url                                                            |

