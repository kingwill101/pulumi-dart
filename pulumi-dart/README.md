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

## Install Language Host (CLI Helper)

This package also ships a small installer wrapper command:

```bash
dart pub global activate pulumi
pulumi-dart install-language-host
```

This installs `pulumi-language-dart` from GitHub releases.

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

## Raw Invoke Example (Dynamic Function Tokens)

You can call provider functions directly by token when you need functionality
before (or without) generated SDK wrappers.

See [`example/raw_invoke_example.dart`](example/raw_invoke_example.dart),
which demonstrates:
- invoking a provider function by token (`pkg:module:function` form)
- turning the invoke `Future` into stack outputs

## Dynamic Resource APIs (Experimental)

The SDK includes a dynamic resource module:

```dart
import 'package:pulumi/dynamic.dart' as dynamic;
```

It provides upstream-shaped dynamic provider/result models and a
`dynamic.Resource` base that injects the reserved `__provider` payload.

See [`example/dynamic_resource_example.dart`](example/dynamic_resource_example.dart).

## Automation Workflows

The Dart SDK includes an automation API in
[`package:pulumi/automation.dart`](lib/automation.dart), backed by Pulumi CLI
operations.

See [`example/automation_cli_example.dart`](example/automation_cli_example.dart),
which demonstrates:
- creating/selecting a stack with `LocalWorkspace`
- setting config values
- running `preview`, `up`, and `destroy`
- setting a config passphrase in-process

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
