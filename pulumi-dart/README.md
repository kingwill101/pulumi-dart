# Pulumi for Dart

`pulumi` is the core Dart SDK for building infrastructure with Pulumi.

It includes:
- deployment entrypoints (`Deployment.run`, `Deployment.runOrThrow`)
- stack/resource base types (`Stack`, `CustomResource`, `ComponentResource`)
- input/output primitives (`Input`, `Output`)
- config helpers (`Config`)
- invoke/call/resource option APIs used by generated provider SDKs

## Requirements

- Dart SDK `>=3.10.0 <4.0.0`
- Pulumi CLI
- `pulumi-language-dart` on your `PATH`

## Install

```bash
dart pub add pulumi
```

## Quick Start

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

## Custom Provider + Custom Resource Example

This package supports raw provider/resource definitions when you want to work directly with Pulumi tokens.
See [`example/pulumi_dart_example.dart`](example/pulumi_dart_example.dart), which demonstrates:
- creating a custom provider resource (`pulumi:providers:random`)
- creating a custom resource (`random:index:RandomPet`) that uses that provider
- exporting stack outputs

## Run With Pulumi

```bash
pulumi stack init dev
pulumi config set name dart
pulumi preview
pulumi up
```

## Development

```bash
dart pub get
dart analyze
dart test
```
