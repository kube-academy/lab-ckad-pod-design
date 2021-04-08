
## Setup

1. Apply the Deployment `naboo`

    ```terminal:execute
    command: k apply -f pod-design/naboo.yaml
    ```

## Challenge

Make sure the replicas autoscale with minimum 2 and maximum 5 when at 80% CPU.  Use ``naboo``{{copy}} as the name of HPA resource.

```examiner:execute-test
name: deploy-naboo-autoscale
title: Has the naboo deployment been configured for autoscaling?
autostart: true
```

<div style="margin-top: 5em;"></div>

```section:begin
title: Solution
```

  ```bash
  k autoscale deploy naboo --name=naboo --min=2 --max=5 --cpu-percent=80
  ```

```section:end
```
