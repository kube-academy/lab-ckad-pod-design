
1. Create a _Deployment_ named ``hoth``{{copy}} with two (2) replicas of Pods with the image ``bitnami/apache``{{copy}}. Be sure to use the version of this container image with the tag ``2.4.46``{{copy}}.

    ```examiner:execute-test
    name: deploy-hoth
    title: hoth Deployment with 2 replicas of apache
    autostart: true
    ```

<div style="margin-top: 5em;"></div>

```section:begin
title: Solution
```

```bash
k create deploy hoth --image=bitnami/apache:2.4.46 --replicas=2
```

```section:end
```
