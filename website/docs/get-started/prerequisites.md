---
sidebar_position: 1
---

# Prerequisites

Before creating a Pulumi Dart project, install and configure the baseline toolchain.

## Required software

- Dart SDK `>=3.10.0 <4.0.0`
- Pulumi CLI
- A Pulumi backend login target:
  - Pulumi Cloud: `pulumi login`
  - Local backend: `pulumi login --local`

Optional (only if you build `pulumi-language-dart` from source):

- Go toolchain

## Recommended versions

- Dart: latest stable in the `3.10.x` line or newer compatible 3.x release
- Pulumi CLI: latest stable
- Go (source build only): modern stable release compatible with repo `go.mod`

## Verify tooling

```bash
dart --version
pulumi version
```

If building from source:

```bash
go version
```

## Configure backend access

```bash
# Pulumi Cloud
pulumi login

# Local backend
pulumi login --local
```

## Configure provider credentials

If your first stack uses cloud resources, configure credentials first:

- AWS: `AWS_PROFILE` or access key env vars
- Azure: `az login`
- GCP: `gcloud auth application-default login`
- Kubernetes: kubeconfig in place

For a credentials-free first run, use the `pulumi_random` provider.

## Security and secrets baseline

If you use the local backend, set a passphrase for config/secrets encryption:

```bash
export PULUMI_CONFIG_PASSPHRASE='choose-a-strong-passphrase'
```

## Next steps

- [Install Pulumi Dart tooling](./install.md)

## Related links

- [Pulumi state and backends](https://www.pulumi.com/docs/concepts/state/)
- [Pulumi provider setup guides](https://www.pulumi.com/docs/iac/get-started/)
