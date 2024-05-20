# kubefox

![Version: 1.5.0](https://img.shields.io/badge/Version-1.5.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.7.0](https://img.shields.io/badge/AppVersion-v0.7.0-informational?style=flat-square)

A Helm chart for the KubeFox Operator.

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| John Long (xadhatter) | <support@xigxog.io> |  |
| Bill Schmidt (BoLB23) | <support@xigxog.io> |  |

## Source Code

* <https://github.com/xigxog/kubefox>
* <https://github.com/xigxog/helm-charts>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://helm.releases.hashicorp.com | vault | 0.28.0 |
| https://open-telemetry.github.io/opentelemetry-helm-charts | opentelemetry(opentelemetry-collector) | 0.91.0 |

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
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| livenessProbe.httpGet.path | string | `"/healthz"` |  |
| livenessProbe.httpGet.port | string | `"health"` |  |
| livenessProbe.initialDelaySeconds | int | `5` |  |
| livenessProbe.periodSeconds | int | `15` |  |
| log.format | string | `"json"` | Configure the logging format for the KubeFox operator. Supported log formats: console, json |
| log.level | string | `"info"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| opentelemetry.config.receivers.k8s_cluster.collection_interval | string | `"60s"` |  |
| opentelemetry.config.service.pipelines.logs.exporters[0] | string | `"debug"` |  |
| opentelemetry.config.service.pipelines.logs.processors[0] | string | `"memory_limiter"` |  |
| opentelemetry.config.service.pipelines.logs.processors[1] | string | `"batch"` |  |
| opentelemetry.config.service.pipelines.logs.receivers[0] | string | `"otlp"` |  |
| opentelemetry.config.service.pipelines.metrics.exporters[0] | string | `"debug"` |  |
| opentelemetry.config.service.pipelines.metrics.processors[0] | string | `"memory_limiter"` |  |
| opentelemetry.config.service.pipelines.metrics.processors[1] | string | `"batch"` |  |
| opentelemetry.config.service.pipelines.metrics.receivers[0] | string | `"otlp"` |  |
| opentelemetry.config.service.pipelines.metrics.receivers[1] | string | `"k8s_cluster"` |  |
| opentelemetry.config.service.pipelines.traces.exporters[0] | string | `"debug"` |  |
| opentelemetry.config.service.pipelines.traces.processors[0] | string | `"memory_limiter"` |  |
| opentelemetry.config.service.pipelines.traces.processors[1] | string | `"batch"` |  |
| opentelemetry.config.service.pipelines.traces.receivers[0] | string | `"otlp"` |  |
| opentelemetry.config.service.telemetry.logs.level | string | `"DEBUG"` |  |
| opentelemetry.config.service.telemetry.metrics.level | string | `"none"` |  |
| opentelemetry.enabled | bool | `false` |  |
| opentelemetry.extraVolumeMounts | list | `[]` |  |
| opentelemetry.extraVolumes | list | `[]` |  |
| opentelemetry.initContainers | list | `[]` |  |
| opentelemetry.mode | string | `"deployment"` |  |
| opentelemetry.presets.clusterMetrics.enabled | bool | `true` |  |
| opentelemetry.replicaCount | int | `1` |  |
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
| vault.enabled | bool | `true` |  |
| vault.externalURL | string | `""` |  |
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
| vault.server.image.tag | string | `"1.14.10-0"` |  |
| vault.server.logFormat | string | `"json"` |  |
| vault.server.logLevel | string | `"info"` |  |
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

