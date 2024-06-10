# stalwart-mail

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.8.1](https://img.shields.io/badge/AppVersion-0.8.1-informational?style=flat-square)

Helm Chart for Stalwart Mail Server - Secure & Modern All-in-One Mail Server (IMAP, JMAP, SMTP)

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Loic Kalbermatter | <loic.kalbermatter@pulseflow.ch> |  |

## Values

### DKIM

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| config.auth.dkim.sign | list | `[{"if":"listener != 'smtp'","then":"['rsa', 'ed25519']"},{"else":false}]` | auth rule for signing with dkim |
| config.auth.dkim.verify | string | `"relaxed"` | verify of dkim signature (relaxed, strict, disable) |

### Authentification

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| config.authentication.fallback-admin.secret | string | `"%{env:FALLBACK_ADMIN_SECRET}%"` | password for fallback authentfication (use env for store in secrets of kubernetes) |
| config.authentication.fallback-admin.user | string | `"admin"` | username for fallback authentfication |
| secrets.env.FALLBACK_ADMIN_SECRET | string | `"supersecret"` | password for fallback authentfication (env) |

### Other Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| certificate.certmanager.dnsNames[0] | string | `"chart-example.local"` |  |
| certificate.certmanager.enabled | bool | `true` |  |
| certificate.certmanager.issuerRef.group | string | `"cert-manager.io"` |  |
| certificate.certmanager.issuerRef.kind | string | `"ClusterIssuer"` |  |
| certificate.certmanager.issuerRef.name | string | `"letsencrypt-prod"` |  |
| certificate.secretName | string | `nil` | not needed if certmanager is used |
| config.directory.internal.store | string | `"rocksdb"` |  |
| config.directory.internal.type | string | `"internal"` |  |
| config.server.listener.https.bind[0] | string | `"[::]:80"` |  |
| config.server.listener.https.protocol | string | `"http"` |  |
| config.server.listener.https.tls.implicit | bool | `true` |  |
| config.server.listener.imap.bind[0] | string | `"[::]:143"` |  |
| config.server.listener.imap.protocol | string | `"imap"` |  |
| config.server.listener.imaptls.bind[0] | string | `"[::]:993"` |  |
| config.server.listener.imaptls.protocol | string | `"imap"` |  |
| config.server.listener.imaptls.tls.implicit | bool | `true` |  |
| config.server.listener.sieve.bind[0] | string | `"[::]:4190"` |  |
| config.server.listener.sieve.protocol | string | `"managesieve"` |  |
| config.server.listener.smtp.bind[0] | string | `"[::]:25"` |  |
| config.server.listener.smtp.protocol | string | `"smtp"` |  |
| config.server.listener.submission.bind[0] | string | `"[::]:587"` |  |
| config.server.listener.submission.protocol | string | `"smtp"` |  |
| config.server.listener.submissions.bind[0] | string | `"[::]:465"` |  |
| config.server.listener.submissions.protocol | string | `"smtp"` |  |
| config.server.listener.submissions.tls.implicit | bool | `true` |  |
| config.server.run-as.group | string | `"stalwart-mail"` | server run-as group |
| config.server.run-as.user | string | `"stalwart-mail"` | server run-as user |
| config.storage.blob | string | `"rocksdb"` |  |
| config.storage.data | string | `"rocksdb"` |  |
| config.storage.directory | string | `"internal"` |  |
| config.storage.fts | string | `"rocksdb"` |  |
| config.storage.lookup | string | `"rocksdb"` |  |
| config.store.rocksdb.compression | string | `"lz4"` |  |
| config.store.rocksdb.path | string | `"/data"` |  |
| config.store.rocksdb.type | string | `"rocksdb"` |  |
| config.tracer.otel.enable | bool | `false` |  |
| config.tracer.otel.endpoint | string | `"https://127.0.0.1/otel"` |  |
| config.tracer.otel.headers | list | `[]` | headers for usage with http (e.g. 'Authorization: <place_auth_here>') |
| config.tracer.otel.level | string | `"info"` |  |
| config.tracer.otel.transport | string | `"grpc"` | grpc or http |
| config.tracer.otel.type | string | `"open-telemetry"` |  |
| config.tracer.stdout.ansi | bool | `false` |  |
| config.tracer.stdout.enable | bool | `true` |  |
| config.tracer.stdout.level | string | `"info"` |  |
| config.tracer.stdout.type | string | `"stdout"` |  |
| env | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| global.image.pullPolicy | string | `nil` | if set it will overwrite all pullPolicy |
| global.image.registry | string | `nil` | if set it will overwrite all registry entries |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.registry | string | `"docker.io"` |  |
| image.repository | string | `"stalwartlabs/mail-server"` |  |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` | accessMode |
| persistence.annotations | object | `{}` |  |
| persistence.enabled | bool | `true` | Enable persistence using Persistent Volume Claims ref: http://kubernetes.io/docs/user-guide/persistent-volumes/ |
| persistence.existingClaim | string | `nil` | A manually managed Persistent Volume and Claim Requires persistence.enabled: true If defined, PVC must be created manually before volume will be bound |
| persistence.hostPath | string | `nil` | Do not create an PVC, direct use hostPath in Pod |
| persistence.size | string | `"10Gi"` | size |
| persistence.storageClass | string | `nil` | Persistent Volume Storage Class If defined, storageClassName: <storageClass> If set to "-", storageClassName: "", which disables dynamic provisioning If undefined (the default) or set to null, no storageClassName spec is   set, choosing the default provisioner.  (gp2 on AWS, standard on   GKE, AWS & OpenStack) |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.annotations | object | `{}` |  |
| service.ipFamilies[0] | string | `"IPv4"` |  |
| service.ipFamilyPolicy | string | `"SingleStack"` | other option is RequireDualStack |
| service.ports.http | int | `80` |  |
| service.ports.imap | int | `143` |  |
| service.ports.imaps | int | `993` |  |
| service.ports.sieve | int | `4190` |  |
| service.ports.smtp | int | `25` |  |
| service.ports.smtp-submission | int | `587` |  |
| service.ports.smtps | int | `465` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automount | bool | `true` |  |
| serviceAccount.create | bool | `false` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
| traefik.enabled | bool | `false` |  |
| traefik.ports.http | string | `"websecure"` |  |
| traefik.ports.imaps | string | `"imaps"` |  |
| traefik.ports.smtps | string | `"smtps"` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.13.1](https://github.com/norwoodj/helm-docs/releases/v1.13.1)
