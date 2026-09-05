---
sidebar_position: 3
---

# Create Your First Pulumi Dart Project

This guide creates a stack that provisions `random:RandomPet` and exports its generated name.

## 1. Create project structure

```bash
mkdir pulumi-dart-quickstart
cd pulumi-dart-quickstart
mkdir -p bin
```

Resulting layout:

```text
pulumi-dart-quickstart/
  Pulumi.yaml
  pubspec.yaml
  bin/
    pulumi_dart_quickstart.dart
```

Main file note:

- If no explicit `runtime.options.binary` or `entryPoint` is set, Pulumi resolves `program: "."` using `bin/main.dart` first, then `bin/<pubspec.name>.dart`.
- In this guide, `pubspec.yaml` uses `name: pulumi_dart_quickstart`, so `bin/pulumi_dart_quickstart.dart` is discovered automatically.

## 2. Define `Pulumi.yaml`

```yaml title="Pulumi.yaml"
name: pulumi-dart-quickstart
runtime: dart
description: First Pulumi program in Dart
```

## 3. Define `pubspec.yaml`

Use the published packages from pub.dev:

```yaml title="pubspec.yaml"
name: pulumi_dart_quickstart
publish_to: none
version: 0.1.0

environment:
  sdk: ">=3.11.0 <4.0.0"

dependencies:
  pulumi: ^3.1.1
  pulumi_random: ^4.21.1+1
```

### Option B: use Git source directly (community flow)

```yaml title="pubspec.yaml (Git dependencies)"
name: pulumi_dart_quickstart
publish_to: none
version: 0.1.0

environment:
  sdk: ">=3.11.0 <4.0.0"

dependencies:
  pulumi:
    git:
      url: https://github.com/kingwill101/pulumi-dart.git
      path: packages/pulumi-dart
  pulumi_random:
    git:
      url: https://github.com/kingwill101/pulumi-dart.git
      path: packages/sdks/random
```

Install dependencies:

```bash
dart pub get
```

## 4. Add stack program

```dart title="bin/pulumi_dart_quickstart.dart"
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_random/index.dart' as random;

class QuickstartStack extends Stack {
  QuickstartStack() {
    final pet = random.RandomPet(
      'pet',
      args: random.RandomPetArgs(prefix: 'dart'),
    );

    registerOutputs({'petName': pet.id});
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => QuickstartStack());
}
```

## 5. Validate Dart project state

```bash
dart analyze
dart run bin/pulumi_dart_quickstart.dart || true
```

`dart run` outside Pulumi will fail or no-op for deployment RPCs; this is expected. Real execution is through Pulumi CLI.

## Next steps

- [Preview and deploy](./deploy.md)

## Related links

- [Use published providers](../providers/use-published-providers.md)
- [Generate provider SDKs from schemas](../providers/generate-provider-sdk.md)
- [Project templates](../reference/project-templates.md)
