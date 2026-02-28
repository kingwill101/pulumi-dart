---
sidebar_position: 1
---

# Project Templates

Use these templates to bootstrap Pulumi Dart projects quickly.

## Template A: minimal stack project

`Pulumi.yaml`:

```yaml
name: my-dart-stack
runtime: dart
description: Pulumi Dart project
```

`pubspec.yaml`:

```yaml
name: my_dart_stack
publish_to: none
version: 0.1.0

environment:
  sdk: ^3.10.0

dependencies:
  pulumi: ^1.0.0
```

`bin/main.dart`:

```dart
import 'package:pulumi/pulumi.dart';

class AppStack extends Stack {
  AppStack() {
    registerOutputs({'message': Output.create<Object?>('hello from dart')});
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => AppStack());
}
```

## Template B: local-dev project using path override

```yaml title="pubspec.yaml"
name: my_dart_stack
publish_to: none
version: 0.1.0

environment:
  sdk: ^3.10.0

dependencies:
  pulumi: any

dependency_overrides:
  pulumi:
    path: /abs/path/to/pulumi-dart/pulumi-dart
```

## Template C: stack using generated provider package

```yaml title="pubspec.yaml"
name: my_provider_stack
publish_to: none
version: 0.1.0

environment:
  sdk: ^3.10.0

dependencies:
  pulumi: any
  pulumi_random:
    path: /abs/path/to/sdk-gen/sdks/random

dependency_overrides:
  pulumi:
    path: /abs/path/to/pulumi-dart/pulumi-dart
```

## Stack config example

Set config values:

```bash
pulumi config set app:name my-app
pulumi config set --secret app:dbPassword super-secret
```

Read config in Dart:

```dart
final config = Config('app');
final appName = config.require('name');
```

## Next steps

- [Preview and deploy](../get-started/deploy.md)
- [Generate provider SDKs](../providers/generate-provider-sdk.md)

## Related links

- [Create your first project](../get-started/create-project.md)
- [Community support](./community-support.md)
