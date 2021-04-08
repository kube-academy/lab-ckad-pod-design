
1. Create a Cron job named ``bespin``{{copy}} that runs the command ``date``{{copy}} using the ``bitnami/kubectl``{{copy}} image every 5 minutes (``*/5 * * * *``{{copy}}).

```examiner:execute-test
name: deploy-bespin-cj
title: bespin CronJob running date every 5 minutes
autostart: true
```

<div style="margin-top: 5em;"></div>

```section:begin
title: Solution
```

```bash
k create cj bespin --image=bitnami/kubectl --schedule="*/5 * * * *" -- date
```

```section:end
```
