# Pulumi for Dart

`pulumi` is the core runtime SDK for writing Pulumi programs in Dart.

This package provides:
- Deployment entrypoints (`Deployment.run`, `Deployment.runOrThrow`)
- Stack and resource base types (`Stack`, `CustomResource`, `ComponentResource`)
- Inputs/outputs and composition helpers (`Input`, `Output`)
- Config access (`Config`)
- Asset/archive support and invoke/call utilities

## Prerequisites

- Dart SDK `>=3.10.0 <4.0.0`
- Pulumi CLI installed
- `pulumi-language-dart` available on `PATH` when running `pulumi up/preview`

## Install

```bash
dart pub add pulumi
```

## Minimal Program

```dart
import 'package:pulumi/pulumi.dart';

class MyStack extends Stack {
  late final Output<Object?> message;

  MyStack() {
    final config = Config();
    final name = config.get('name') ?? 'world';
    message = Output.create<Object?>('hello-$name');
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return [OutputProperty('message', message)];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => MyStack());
}
```

## Running With Pulumi

Create a Pulumi project with runtime `dart`, then run:

```bash
pulumi stack init dev
pulumi preview
pulumi up
```

Set config values as needed:

```bash
pulumi config set name dart
```

## Example

See [`example/pulumi_dart_example.dart`](example/pulumi_dart_example.dart) for a complete sample using config + stack outputs.

## Development

```bash
dart pub get
dart analyze
dart test
```
