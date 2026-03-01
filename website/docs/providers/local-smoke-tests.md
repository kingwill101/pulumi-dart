---
sidebar_position: 3
---

# Local Smoke Tests (No Publish Required)

Use path dependencies to validate generated providers end-to-end before publishing.

## 1. Create smoke project

```bash
mkdir smoke-random && cd smoke-random
mkdir -p bin
```

`Pulumi.yaml`:

```yaml
name: smoke-random
runtime: dart
```

`pubspec.yaml`:

```yaml
name: smoke_random
publish_to: none
version: 0.0.1

environment:
  sdk: ^3.11.0

dependencies:
  pulumi: any
  pulumi_random:
    path: /abs/path/to/sdks/random

dependency_overrides:
  pulumi:
    path: /abs/path/to/pulumi-dart/pulumi-dart
```

Program (`bin/smoke_random.dart`):

```dart
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_random/index.dart' as random;

class SmokeStack extends Stack {
  SmokeStack() {
    final pet = random.RandomPet('smoke-pet');
    registerOutputs({'petName': pet.id});
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => SmokeStack());
}
```

Install dependencies:

```bash
dart pub get
```

## 2. Run preview

```bash
export PATH="/abs/path/to/pulumi-dart/pulumi-language-dart:${PATH}"
export PULUMI_CONFIG_PASSPHRASE='choose-a-strong-passphrase'
pulumi stack select dev --create
pulumi preview
```

## 3. Deploy and inspect outputs

```bash
pulumi up
pulumi stack output
```

## 4. Validate generated package quality

From generated package dir:

```bash
dart analyze
dart test
```

## Smoke test checklist

- `pulumi-language-dart` resolves from expected path
- stack preview and up succeed
- expected outputs appear
- no unresolved package dependency conflicts

## Next steps

- [Troubleshooting](../get-started/troubleshooting.md)
- [Dependency registry guidance](./dependency-registry.md)

## Related links

- [Generate provider SDKs](./generate-provider-sdk.md)
