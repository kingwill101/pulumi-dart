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
  sdk: ">=3.11.0 <4.0.0"

dependencies:
  pulumi: any

dependency_overrides:
  pulumi:
    path: /abs/path/to/pulumi-dart/packages/pulumi-dart
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

If this package is already present in your repo workspace (for example you already have `packages/command`),
add its package directory to your workspace pubspec first:

```yaml
workspace:
  - command
```

Then consume it directly with your existing workspace dependency resolution:

```yaml
dependencies:
  pulumi_command: ^1.0.0
```

## 3. Consume generated package from application

In your application `pubspec.yaml`:

```yaml
dependencies:
  pulumi_random:
    path: /abs/path/to/sdk-gen/sdks/random

dependency_overrides:
  pulumi:
    path: /abs/path/to/pulumi-dart/packages/pulumi-dart
```

Then run:

```bash
dart pub get
```

## Important generation environment variables

- `PULUMI_DART_DEPENDENCY_REGISTRY`: local registry file path
- `PULUMI_DART_DEPENDENCY_REGISTRY_URL`: remote registry URL fallback
- `PULUMI_DART_UPDATE_EXISTING_PUBSPEC=true`: auto-update missing required deps in existing `pubspec.yaml`
- `PULUMI_DART_PULUMI_DEPENDENCY_PATH`: force local path dependency for `pulumi`
- `PULUMI_DART_PULUMI_DEPENDENCY_VERSION`: force hosted version constraint for `pulumi`
- `PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV`: fetch latest `pulumi` version from pub.dev when path/version are unset (default: `true`)
- `PULUMI_DART_PULUMI_DEPENDENCY_PUBDEV_URL`: override pub.dev API URL (default: `https://pub.dev/api/packages/pulumi`)
- `PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL` / `..._GIT_PATH` / `..._GIT_REF`: force git source for `pulumi`

Pulumi dependency source precedence (non-workspace generation):

1. `PULUMI_DART_PULUMI_DEPENDENCY_PATH`
2. `PULUMI_DART_PULUMI_DEPENDENCY_VERSION`
3. Git dependency (`..._GIT_URL` / `..._GIT_PATH` / `..._GIT_REF`)

If generation runs inside a Dart workspace and workspace resolution is active, generated
provider pubspecs use the workspace `pulumi` package version.

Example: use latest published pub.dev version for non-workspace generation:

```bash
export PULUMI_DART_PULUMI_DEPENDENCY_VERSION="$(curl -fsSL https://pub.dev/api/packages/pulumi | jq -r '.latest.version')"
pulumi package add random
```

## Notes on package scaffolding files

The generator writes default package scaffolding files when missing:

- `README.md`
- `CHANGELOG.md`
- `analysis_options.yaml`
- `example/main.dart`

Existing files at those paths are preserved.

## Notes on unsupported/edge providers

Some providers may require registry dependency hints or manual dependency overrides if schema metadata is incomplete for Dart.

## Next steps

- [Run local smoke tests](./local-smoke-tests.md)
- [Configure dependency registry entries](./dependency-registry.md)
- [Author a provider plugin in Dart](./provider-authoring.md)

## Related links

- [Pulumi package add command](https://www.pulumi.com/docs/iac/cli/commands/pulumi_package_add/)
- [Install language host](../get-started/install.md)
