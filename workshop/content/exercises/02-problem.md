
## Setup

1. Apply the deployment named `yavin`:

    ```terminal:execute
    command: k apply -f pod-design/yavin.yaml
    ```

1. Wait for the rollout of the deployment to complete.

    ```terminal:execute
    command: k rollout status deploy yavin
    ```

1. Rollout an update to your deployment:

    ```terminal:execute
    command: k apply -f pod-design/yavin-update.yaml
    ```

1. Inspect the state of the new pods.

    ```terminal:execute
    command: k get pod -w
    ```

There is a problem.

## Challenge

1. Rollback the Deployment `yavin` so that the Pods are working again.

1. Export `yavin` deployment spec in JSON to the file ``yavin.json``{{copy}}.

```examiner:execute-test
name: deploy-yavin-rollback
title: Has the yavin deployment been rolled back?
autostart: true
```

<div style="margin-top: 5em;"></div>

```section:begin
title: Solution
```

1. Roll back the deployment

    ```bash
    k rollout undo deploy yavin
    ```

1. Export `yavin` deployment spec in JSON to the file `yavin.json`.

    ```bash
    k get deploy yavin -o json > yavin.json
    ```

```section:end
```
