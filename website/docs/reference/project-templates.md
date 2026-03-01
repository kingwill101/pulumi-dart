---
sidebar_position: 1
---

# Project Templates

Use the maintained templates in this repo to bootstrap Pulumi Dart projects quickly.

## Official community templates

- `templates/dart-minimal`
- `templates/dart-random`

Local:

```bash
pulumi new ./templates/dart-minimal -y --name my-dart-stack --stack dev --secrets-provider passphrase
```

Remote:

```bash
pulumi new https://github.com/pulumi/pulumi-dart/tree/main/templates/dart-minimal -y --name my-dart-stack --stack dev --secrets-provider passphrase
```

## Minimal stack file structure

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
  sdk: ^3.11.0

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

During `pulumi new`, `pulumi-language-dart` rewrites unresolved `pulumi` constraints
to a known source dependency so clean-environment installs succeed before pub.dev publish.
You can customize source selection with environment variables:

- `PULUMI_DART_PULUMI_DEPENDENCY_PATH`
- `PULUMI_DART_PULUMI_DEPENDENCY_VERSION`
- `PULUMI_DART_PULUMI_DEPENDENCY_FROM_PUBDEV` (default: `true`)
- `PULUMI_DART_PULUMI_DEPENDENCY_PUBDEV_URL` (default: `https://pub.dev/api/packages/pulumi`)
- `PULUMI_DART_PULUMI_DEPENDENCY_GIT_URL`
- `PULUMI_DART_PULUMI_DEPENDENCY_GIT_PATH`
- `PULUMI_DART_PULUMI_DEPENDENCY_GIT_REF`
- `PULUMI_DART_TEMPLATE_REWRITE_PULUMI=false` to disable rewrite

Dependency source precedence for template rewrite:

1. `PULUMI_DART_PULUMI_DEPENDENCY_PATH`
2. `PULUMI_DART_PULUMI_DEPENDENCY_VERSION`
3. Git dependency (`..._GIT_URL` / `..._GIT_PATH` / `..._GIT_REF`)

Example pinning to latest pub.dev release:

```bash
export PULUMI_DART_PULUMI_DEPENDENCY_VERSION="$(curl -fsSL https://pub.dev/api/packages/pulumi | jq -r '.latest.version')"
pulumi new ./templates/dart-minimal -y --name my-dart-stack --stack dev --secrets-provider passphrase
```

For stricter generation checks (typically in CI):

- `PULUMI_DART_VALIDATE_DEPENDENCY_PATHS=true`
- `PULUMI_DART_VALIDATE_PUBDEV=true`

## Template B: local-dev project using path override

```yaml title="pubspec.yaml"
name: my_dart_stack
publish_to: none
version: 0.1.0

environment:
  sdk: ^3.11.0

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
  sdk: ^3.11.0

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
