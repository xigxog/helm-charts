# kubefox

![Version: 1.1.0](https://img.shields.io/badge/Version-1.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.3.0](https://img.shields.io/badge/AppVersion-v0.3.0-informational?style=flat-square)

A Helm chart for the KubeFox Operator.

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| John Long (xadhatter) | <support@xigxog.io> |  |
| Bill Schmidt (BoLB23) | <support@xigxog.io> |  |

## Source Code

* <https://github.com/xigxog/kubefox>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://helm.releases.hashicorp.com | vault | 0.26.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| extraAnnotations | object | `{}` |  |
| extraContainers | list | `[]` |  |
| extraInitContainers | list | `[]` |  |
| extraLabels | object | `{}` |  |
| extraVolumes | list | `[]` |  |
| fullnameOverride | string | `""` |  |
| image.name | string | `"ghcr.io/xigxog/kubefox/operator"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.tag | string | `""` | Defaults to Chart's appVersion |
| imagePullSecrets | list | `[]` |  |
| livenessProbe.httpGet.path | string | `"/healthz"` |  |
| livenessProbe.httpGet.port | string | `"health"` |  |
| livenessProbe.initialDelaySeconds | int | `5` |  |
| livenessProbe.periodSeconds | int | `15` |  |
| log.format | string | `"json"` |  |
| log.level | string | `"info"` | Configure the logging verbosity for the KubeFox operator. Supported log levels include:debug, info, warn, error |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| priorityClassName | string | `""` |  |
| readinessProbe.httpGet.path | string | `"/readyz"` |  |
| readinessProbe.httpGet.port | string | `"health"` |  |
| readinessProbe.initialDelaySeconds | int | `5` |  |
| readinessProbe.periodSeconds | int | `15` |  |
| resources.limits.cpu | string | `"500m"` |  |
| resources.limits.memory | string | `"128Mi"` |  |
| resources.requests.cpu | string | `"0"` |  |
| resources.requests.memory | string | `"64Mi"` |  |
| tolerations | list | `[]` |  |
| vault.enabled | bool | `true` | To use your own instance of Vault set 'enabled' to 'false' and specify its URL including protocol and port using 'externalURL'. |
| vault.externalURL | string | `""` |  |
| vault.fullnameOverride | string | `"kubefox-vault"` |  |
| vault.global.tlsDisable | bool | `false` |  |
| vault.injector.enabled | bool | `false` |  |
| vault.server.dataStorage.size | string | `"1Gi"` |  |
| vault.server.extraSecretEnvironmentVars[0].envName | string | `"KUBEFOX_INSTANCE"` |  |
| vault.server.extraSecretEnvironmentVars[0].secretKey | string | `"KUBEFOX_INSTANCE"` |  |
| vault.server.extraSecretEnvironmentVars[0].secretName | string | `"kubefox-vault-env"` |  |
| vault.server.extraSecretEnvironmentVars[1].envName | string | `"KUBEFOX_NAMESPACE"` |  |
| vault.server.extraSecretEnvironmentVars[1].secretKey | string | `"KUBEFOX_NAMESPACE"` |  |
| vault.server.extraSecretEnvironmentVars[1].secretName | string | `"kubefox-vault-env"` |  |
| vault.server.ha.enabled | bool | `false` |  |
| vault.server.image.repository | string | `"ghcr.io/xigxog/vault"` |  |
| vault.server.image.tag | string | `"1.14.6"` |  |
| vault.server.logFormat | string | `"json"` | Configure the logging format for the Vault server. Supported log formats include: standard, json |
| vault.server.logLevel | string | `"info"` | Configure the logging verbosity for the Vault server. Supported log levels include: trace, debug, info, warn, error |
| vault.server.resources.limits.cpu | string | `"500m"` |  |
| vault.server.resources.limits.memory | string | `"128Mi"` |  |
| vault.server.resources.requests.cpu | string | `"100m"` |  |
| vault.server.resources.requests.memory | string | `"128Mi"` |  |
| vault.server.service.port | int | `8200` |  |
| vault.server.standalone.enabled | bool | `true` |  |
| vault.server.statefulSet.securityContext.container.allowPrivilegeEscalation | bool | `false` |  |
| vault.server.statefulSet.securityContext.container.capabilities.drop[0] | string | `"ALL"` |  |
| vault.server.statefulSet.securityContext.pod.fsGroup | int | `1000` |  |
| vault.server.statefulSet.securityContext.pod.fsGroupChangePolicy | string | `"OnRootMismatch"` |  |
| vault.server.statefulSet.securityContext.pod.runAsGroup | int | `1000` |  |
| vault.server.statefulSet.securityContext.pod.runAsNonRoot | bool | `true` |  |
| vault.server.statefulSet.securityContext.pod.runAsUser | int | `100` |  |

