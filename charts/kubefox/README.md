# kubefox

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.1.0-alpha](https://img.shields.io/badge/AppVersion-v0.1.0--alpha-informational?style=flat-square)

A Helm chart for the KubeFox Platform.

## Source Code

* <https://github.com/xigxog/kubefox>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://helm.releases.hashicorp.com | vault | 0.24.1 |
| https://nats-io.github.io/k8s/helm/charts | nats | 0.19.13 |
| https://traefik.github.io/charts | traefik | 22.1.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| apiServer.image.pullPolicy | string | `"Always"` |  |
| apiServer.image.repository | string | `"ghcr.io/xigxog/kubefox/api-server"` |  |
| apiServer.image.tag | string | `"v0.1.0-alpha"` |  |
| broker.image.pullPolicy | string | `"Always"` |  |
| broker.image.repository | string | `"ghcr.io/xigxog/kubefox/broker"` |  |
| broker.image.tag | string | `"v0.1.0-alpha"` |  |
| broker.service.name | string | `"kfp-broker"` |  |
| devMode | bool | `true` |  |
| metacontroller.additionalContainers[0].args[0] | string | `"adapter"` |  |
| metacontroller.additionalContainers[0].args[1] | string | `"http-server"` |  |
| metacontroller.additionalContainers[0].args[2] | string | `"--system=kubefox"` |  |
| metacontroller.additionalContainers[0].args[3] | string | `"--component=kubernetes-adapter"` |  |
| metacontroller.additionalContainers[0].args[4] | string | `"--component-hash=0000000"` |  |
| metacontroller.additionalContainers[0].envFrom[0].configMapRef.name | string | `"kfp-env"` |  |
| metacontroller.additionalContainers[0].image | string | `"ghcr.io/xigxog/kubefox/broker:v0.1.0-alpha"` |  |
| metacontroller.additionalContainers[0].imagePullPolicy | string | `"Always"` |  |
| metacontroller.additionalContainers[0].name | string | `"broker"` |  |
| metacontroller.additionalContainers[0].resources | object | `{}` |  |
| metacontroller.additionalContainers[0].volumeMounts[0].mountPath | string | `"/kubefox/nats/tls"` |  |
| metacontroller.additionalContainers[0].volumeMounts[0].name | string | `"kfp-tls-cert-nats"` |  |
| metacontroller.additionalContainers[0].volumeMounts[0].readOnly | bool | `true` |  |
| metacontroller.additionalContainers[0].volumeMounts[1].mountPath | string | `"/kubefox/runtime/tls"` |  |
| metacontroller.additionalContainers[0].volumeMounts[1].name | string | `"kfp-tls-cert-runtime"` |  |
| metacontroller.additionalContainers[0].volumeMounts[1].readOnly | bool | `true` |  |
| metacontroller.additionalVolumes[0].name | string | `"kfp-tls-cert-nats"` |  |
| metacontroller.additionalVolumes[0].secret.defaultMode | int | `420` |  |
| metacontroller.additionalVolumes[0].secret.secretName | string | `"kfp-tls-cert-nats"` |  |
| metacontroller.additionalVolumes[1].name | string | `"kfp-tls-cert-runtime"` |  |
| metacontroller.additionalVolumes[1].secret.defaultMode | int | `420` |  |
| metacontroller.additionalVolumes[1].secret.secretName | string | `"kfp-tls-cert-runtime"` |  |
| nats.cluster.enabled | bool | `false` |  |
| nats.nats.client.port | int | `4222` |  |
| nats.nats.client.portName | string | `"client"` |  |
| nats.nats.jetstream.enabled | bool | `true` |  |
| nats.nats.jetstream.fileStorage.enabled | bool | `true` |  |
| nats.nats.jetstream.fileStorage.size | string | `"8Gi"` |  |
| nats.nats.jetstream.memStorage.enabled | bool | `true` |  |
| nats.nats.jetstream.memStorage.size | string | `"1Gi"` |  |
| nats.nats.logging.debug | bool | `false` |  |
| nats.nats.service.name | string | `"kfp-nats"` |  |
| nats.nats.tls.allowNonTLS | bool | `false` |  |
| nats.nats.tls.ca | string | `"ca.crt"` |  |
| nats.nats.tls.cert | string | `"tls.crt"` |  |
| nats.nats.tls.key | string | `"tls.key"` |  |
| nats.nats.tls.secret.name | string | `"kfp-tls-cert-nats"` |  |
| nats.nats.tls.verify | bool | `true` |  |
| nats.natsbox.enabled | bool | `false` |  |
| operator.image.pullPolicy | string | `"Always"` |  |
| operator.image.repository | string | `"ghcr.io/xigxog/kubefox/operator"` |  |
| operator.image.tag | string | `"v0.1.0-alpha"` |  |
| runtime.server.image.pullPolicy | string | `"Always"` |  |
| runtime.server.image.repository | string | `"ghcr.io/xigxog/kubefox/runtime-server"` |  |
| runtime.server.image.tag | string | `"v0.1.0-alpha"` |  |
| runtime.server.service.name | string | `"kfp-runtime-server"` |  |
| runtime.server.service.port | int | `6060` |  |
| runtime.server.tls.secret.name | string | `"kfp-tls-cert-runtime"` |  |
| traefik.deployment.additionalContainers[0].args[0] | string | `"adapter"` |  |
| traefik.deployment.additionalContainers[0].args[1] | string | `"http-server"` |  |
| traefik.deployment.additionalContainers[0].args[2] | string | `"--system=kubefox"` |  |
| traefik.deployment.additionalContainers[0].args[3] | string | `"--component=http-ingress-adapter"` |  |
| traefik.deployment.additionalContainers[0].args[4] | string | `"--component-hash=0000000"` |  |
| traefik.deployment.additionalContainers[0].envFrom[0].configMapRef.name | string | `"kfp-env"` |  |
| traefik.deployment.additionalContainers[0].image | string | `"ghcr.io/xigxog/kubefox/broker:v0.1.0-alpha"` |  |
| traefik.deployment.additionalContainers[0].imagePullPolicy | string | `"Always"` |  |
| traefik.deployment.additionalContainers[0].name | string | `"broker"` |  |
| traefik.deployment.additionalContainers[0].resources | object | `{}` |  |
| traefik.deployment.additionalContainers[0].volumeMounts[0].mountPath | string | `"/kubefox/nats/tls"` |  |
| traefik.deployment.additionalContainers[0].volumeMounts[0].name | string | `"kfp-tls-cert-nats"` |  |
| traefik.deployment.additionalContainers[0].volumeMounts[0].readOnly | bool | `true` |  |
| traefik.deployment.additionalContainers[0].volumeMounts[1].mountPath | string | `"/kubefox/runtime/tls"` |  |
| traefik.deployment.additionalContainers[0].volumeMounts[1].name | string | `"kfp-tls-cert-runtime"` |  |
| traefik.deployment.additionalContainers[0].volumeMounts[1].readOnly | bool | `true` |  |
| traefik.deployment.additionalVolumes[0].name | string | `"kfp-tls-cert-nats"` |  |
| traefik.deployment.additionalVolumes[0].secret.defaultMode | int | `420` |  |
| traefik.deployment.additionalVolumes[0].secret.secretName | string | `"kfp-tls-cert-nats"` |  |
| traefik.deployment.additionalVolumes[1].name | string | `"kfp-tls-cert-runtime"` |  |
| traefik.deployment.additionalVolumes[1].secret.defaultMode | int | `420` |  |
| traefik.deployment.additionalVolumes[1].secret.secretName | string | `"kfp-tls-cert-runtime"` |  |
| traefik.globalArguments | list | `[]` |  |
| traefik.ingressClass.enabled | bool | `false` |  |
| traefik.ingressClass.isDefaultClass | bool | `false` |  |
| traefik.ingressRoute.dashboard.enabled | bool | `false` |  |
| traefik.logs.access.enabled | bool | `false` |  |
| traefik.logs.general.level | string | `"ERROR"` |  |
| traefik.ports.web.expose | bool | `true` |  |
| traefik.ports.web.exposedPort | int | `80` |  |
| traefik.ports.web.nodePort | int | `30080` |  |
| traefik.ports.web.port | int | `8000` |  |
| traefik.ports.web.protocol | string | `"TCP"` |  |
| traefik.ports.web.redirectTo | string | `"websecure"` |  |
| traefik.ports.websecure.expose | bool | `true` |  |
| traefik.ports.websecure.exposedPort | int | `443` |  |
| traefik.ports.websecure.nodePort | int | `30443` |  |
| traefik.ports.websecure.port | int | `8443` |  |
| traefik.ports.websecure.protocol | string | `"TCP"` |  |
| traefik.ports.websecure.tls.enabled | bool | `true` |  |
| traefik.providers.kubernetesCRD.allowCrossNamespace | bool | `true` |  |
| traefik.providers.kubernetesCRD.allowExternalNameServices | bool | `true` |  |
| traefik.providers.kubernetesCRD.enabled | bool | `true` |  |
| traefik.providers.kubernetesCRD.namespaces | list | `[]` |  |
| traefik.providers.kubernetesIngress.enabled | bool | `false` |  |
| traefik.service.type | string | `"NodePort"` |  |
| traefik.serviceAccount.name | string | `"kfp-broker"` |  |
| vault.global.tlsDisable | bool | `false` |  |
| vault.injector.enabled | bool | `false` |  |
| vault.plugins.nats.cmd | string | `"nats-plugin-0.1.2-alpha"` |  |
| vault.plugins.nats.hash | string | `"0921086bb4208c68714cb5db8665722b76ed887aa4800e9022004178d14611b8"` |  |
| vault.plugins.nats.url | string | `"https://github.com/kubefox/vault-plugin-nats/releases/download/0.1.2-alpha/nats-plugin-0.1.2-alpha"` |  |
| vault.plugins.nats.version | string | `"0.1.2-alpha"` |  |
| vault.server.enabled | bool | `true` |  |
| vault.server.extraEnvironmentVars.VAULT_CACERT | string | `"/vault/tls/ca.crt"` |  |
| vault.server.extraEnvironmentVars.VAULT_ENABLE_FILE_PERMISSIONS_CHECK | string | `"true"` |  |
| vault.server.extraEnvironmentVars.VAULT_TLSCERT | string | `"/vault/tls/tls.crt"` |  |
| vault.server.extraEnvironmentVars.VAULT_TLSKEY | string | `"/vault/tls/tls.key"` |  |
| vault.server.extraInitContainers[0].args[0] | string | `"if [ -f \"${PLUGINS_DIR}/${CMD}\" ]; then exit 0; fi && mkdir -p \"${PLUGINS_DIR}\" && wget \"$URL\" --tries 3 --output-document \"${PLUGINS_DIR}/${CMD}\" && chmod 700 \"${PLUGINS_DIR}/${CMD}\""` |  |
| vault.server.extraInitContainers[0].command[0] | string | `"sh"` |  |
| vault.server.extraInitContainers[0].command[1] | string | `"-c"` |  |
| vault.server.extraInitContainers[0].env[0].name | string | `"URL"` |  |
| vault.server.extraInitContainers[0].env[0].value | string | `"https://github.com/kubefox/vault-plugin-nats/releases/download/0.1.2-alpha/nats-plugin-0.1.2-alpha"` |  |
| vault.server.extraInitContainers[0].env[1].name | string | `"CMD"` |  |
| vault.server.extraInitContainers[0].env[1].value | string | `"nats-plugin-0.1.2-alpha"` |  |
| vault.server.extraInitContainers[0].env[2].name | string | `"PLUGINS_DIR"` |  |
| vault.server.extraInitContainers[0].env[2].value | string | `"/vault/data/plugins"` |  |
| vault.server.extraInitContainers[0].image | string | `"alpine:3.17.2"` |  |
| vault.server.extraInitContainers[0].name | string | `"nats-plugin"` |  |
| vault.server.extraInitContainers[0].volumeMounts[0].mountPath | string | `"/vault/data"` |  |
| vault.server.extraInitContainers[0].volumeMounts[0].name | string | `"data"` |  |
| vault.server.ingress.enabled | bool | `false` |  |
| vault.server.logFormat | string | `"standard"` |  |
| vault.server.logLevel | string | `"info"` |  |
| vault.server.service.name | string | `"kfp-vault"` |  |
| vault.server.service.port | int | `8200` |  |
| vault.server.service.targetPort | int | `8200` |  |
| vault.server.standalone.config | string | `"ui = true\nlistener \"tcp\" {\n  tls_disable = 0\n  address = \"[::]:8200\"\n  cluster_address = \"[::]:8201\"\n  tls_client_ca_file = \"/vault/tls/ca.crt\"\n  tls_cert_file = \"/vault/tls/tls.crt\"\n  tls_key_file  = \"/vault/tls/tls.key\"\n}\nstorage \"file\" {\n  path = \"/vault/data\"\n}\nplugin_directory = \"/vault/data/plugins\"\n"` |  |
| vault.server.standalone.enabled | bool | `true` |  |
| vault.server.tls.secret.name | string | `"kfp-tls-cert-vault"` |  |
| vault.server.updateStrategyType | string | `"RollingUpdate"` |  |
| vault.server.volumeMounts[0].mountPath | string | `"/vault/tls"` |  |
| vault.server.volumeMounts[0].name | string | `"tls"` |  |
| vault.server.volumeMounts[0].readOnly | bool | `true` |  |
| vault.server.volumes[0].name | string | `"tls"` |  |
| vault.server.volumes[0].secret.defaultMode | int | `420` |  |
| vault.server.volumes[0].secret.secretName | string | `"kfp-tls-cert-vault"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.0](https://github.com/norwoodj/helm-docs/releases/v1.11.0)
