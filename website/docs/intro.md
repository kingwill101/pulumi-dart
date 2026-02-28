---
sidebar_position: 1
slug: /intro
---

# Pulumi for Dart

Pulumi for Dart lets you define infrastructure in Dart, preview changes, and deploy through the Pulumi engine.

:::info Community-maintained runtime
Pulumi for Dart is community-maintained and is not currently an officially supported Pulumi language runtime in upstream Pulumi.
:::

## Who this is for

- Dart teams that want infrastructure-as-code in the same language as application/tooling code
- Platform teams evaluating Pulumi Dart for internal infrastructure workflows
- Contributors who want to add/maintain provider SDK support from Pulumi schemas

## Project components

- `pulumi-dart/`: core Dart runtime SDK (`package:pulumi`)
- `pulumi-language-dart/`: language host plugin used by Pulumi CLI
- `packages/`: generated provider SDK packages (`pulumi_aws`, `pulumi_random`, etc.)
- `packages/sdk_dependency_registry.yaml`: community dependency registry for provider generation

## How it works (high-level)

1. You run a Pulumi CLI command (`pulumi preview`, `pulumi up`, etc.)
2. Pulumi launches `pulumi-language-dart` for `runtime: dart`
3. The language host runs your Dart program and exchanges RPC calls with the Pulumi engine
4. Provider SDK packages map Pulumi schema resources/functions to Dart classes and invokes

## Documentation roadmap

1. [Get Started](./get-started/prerequisites.md): install tooling and deploy your first stack
2. [Provider SDKs](./providers/use-published-providers.md): use published packages or generate your own from schemas
3. [Reference](./reference/project-templates.md): templates, release strategy, and community maintenance guidance

## What to expect as a community user

- You can be productive today for core workflows and provider SDK experimentation
- Some provider SDK edges may require custom registry entries or local overrides
- Community contributions (docs, tests, registry entries, generator fixes) are a first-class part of project progress

## Next steps

- [Prerequisites](./get-started/prerequisites.md)
- [Install Pulumi Dart tooling](./get-started/install.md)

## Related links

- [Pulumi docs](https://www.pulumi.com/docs/)
- [Pulumi Registry](https://www.pulumi.com/registry/)
- [Pulumi Dart repository](https://github.com/pulumi/pulumi-dart)
