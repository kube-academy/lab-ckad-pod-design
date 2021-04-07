
1. Create a Cron job named `bespin` that runs the command `date` using the `bitnami/kubectl` image every 5 minutes (`*/5 * * * *`).

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
