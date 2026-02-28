---
sidebar_position: 4
---

# Dependency Registry for Generated SDKs

Generated provider packages can consume Dart dependency metadata from a registry file.

Default community registry in this repository:

- `packages/sdk_dependency_registry.yaml`

## Why the registry exists

Upstream provider schemas often omit Dart-specific dependency data. This registry bridges that gap so generated `pubspec.yaml` files include required packages.

## Registry schema

```yaml
providers:
  provider-name:
    dependencies:
      pulumi_policy: any
      some_package: ^1.2.3
      local_dev_package:
        path: ../packages/local_dev_package
      git_package:
        git:
          url: https://github.com/org/repo.git
          ref: main
          path: packages/git_package
      hosted_package:
        hosted:
          name: hosted_package
          url: https://pub.dev
```

## Supported dependency spec forms

- version string (`^1.2.3`, `any`, etc.)
- map forms accepted by Dart pubspec:
  - `path`
  - `git` (`url`, optional `ref`, optional `path`)
  - `hosted` (`name`, `url`)

## Lookup and precedence

Lookup order:

1. `PULUMI_DART_DEPENDENCY_REGISTRY` (local file path)
2. ancestor search for `sdk_dependency_registry.yaml`
3. `PULUMI_DART_DEPENDENCY_REGISTRY_URL` (HTTP fallback)

Precedence when multiple dependency sources exist:

1. inferred dependencies from external schema refs
2. registry dependencies (override inferred)
3. schema `language.dart.dependencies` (override both)

## Path resolution behavior

Relative `path` entries are resolved from the registry file location, not the current shell directory.

## Use your own registry

Local file:

```bash
export PULUMI_DART_DEPENDENCY_REGISTRY=/abs/path/to/my_registry.yaml
pulumi package add ./provider.schema.json
```

Remote URL:

```bash
export PULUMI_DART_DEPENDENCY_REGISTRY_URL=https://example.com/my_registry.yaml
pulumi package add ./provider.schema.json
```

## Contributing registry entries to this repo

1. Add/update provider section in `packages/sdk_dependency_registry.yaml`
2. Generate provider package in a clean workspace
3. Confirm `dart pub get` resolves dependencies
4. Run smoke test for at least one resource/invoke path
5. Submit PR with:
   - registry diff
   - reproduction/generation commands
   - validation notes

## Circular dependency guidance

Avoid registry entries that make provider packages depend on each other cyclically (for example `pulumi_awsx -> pulumi_foo -> pulumi_awsx`). If unavoidable, use one-directional dependencies and keep shared utilities in independent packages.

## Next steps

- [Generate provider SDKs](./generate-provider-sdk.md)
- [Community support and contribution](../reference/community-support.md)

## Related links

- [Dart pubspec dependency docs](https://dart.dev/tools/pub/pubspec)
- [Language host releases](../reference/language-host-releases.md)
