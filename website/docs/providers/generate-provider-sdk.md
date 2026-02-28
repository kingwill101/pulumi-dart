---
sidebar_position: 2
---

# Generate Provider SDKs from Schemas

You can generate Dart provider SDKs locally from schemas or provider plugins, without waiting for upstream support or package publication.

## Workflow summary

1. Prepare a generation workspace (`Pulumi.yaml` + `pubspec.yaml`)
2. Install or expose `pulumi-language-dart`
3. Run `pulumi package add ...`
4. Consume generated package from `sdks/<provider>` via `path`/`git`

## 1. Prepare a generation workspace

```bash
mkdir sdk-gen && cd sdk-gen
```

Create `Pulumi.yaml`:

```yaml title="Pulumi.yaml"
name: sdk-gen
runtime: dart
```

Create `pubspec.yaml`:

```yaml title="pubspec.yaml"
name: sdk_gen
publish_to: none
version: 0.0.1

environment:
  sdk: ^3.10.0

dependencies:
  pulumi: any

dependency_overrides:
  pulumi:
    path: /abs/path/to/pulumi-dart/pulumi-dart
```

Install dependencies:

```bash
dart pub get
```

## 2. Generate SDK package

### Method A: local schema file

```bash
curl -fsSL https://www.pulumi.com/registry/packages/random/schema.json -o random.schema.json
pulumi package add ./random.schema.json
```

### Method B: provider plugin name/version

```bash
pulumi package add random
pulumi package add aws@7.11.0
```

### Method C: local provider binary

```bash
pulumi package add /abs/path/to/custom-provider
```

Generated output goes under:

- `sdks/<provider>/`

## 3. Consume generated package from application

In your application `pubspec.yaml`:

```yaml
dependencies:
  pulumi_random:
    path: /abs/path/to/sdk-gen/sdks/random

dependency_overrides:
  pulumi:
    path: /abs/path/to/pulumi-dart/pulumi-dart
```

Then run:

```bash
dart pub get
```

## Important generation environment variables

- `PULUMI_DART_DEPENDENCY_REGISTRY`: local registry file path
- `PULUMI_DART_DEPENDENCY_REGISTRY_URL`: remote registry URL fallback
- `PULUMI_DART_UPDATE_EXISTING_PUBSPEC=true`: auto-update missing required deps in existing `pubspec.yaml`

## Notes on manual package files

The generator focuses on `lib/` sources by default. Keep hand-authored files like `README.md`, `CHANGELOG.md`, and `analysis_options.yaml` under your control in generated package roots.

## Notes on unsupported/edge providers

Some providers may require registry dependency hints or manual dependency overrides if schema metadata is incomplete for Dart.

## Next steps

- [Run local smoke tests](./local-smoke-tests.md)
- [Configure dependency registry entries](./dependency-registry.md)

## Related links

- [Pulumi package add command](https://www.pulumi.com/docs/iac/cli/commands/pulumi_package_add/)
- [Install language host](../get-started/install.md)
