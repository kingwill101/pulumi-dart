# pulumi_component

Dart SDK for the Pulumi component provider.

Provider documentation: [Pulumi Registry](https://www.pulumi.com/registry/packages/component/)

This package is generated from the upstream Pulumi provider schema. It requires
the [Pulumi Dart SDK](https://pub.dev/packages/pulumi) and the
`pulumi-language-dart` language host.

## Installation

~~~sh
dart pub add pulumi_component
~~~

## Usage

~~~dart
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_component/pulumi_component.dart' as provider;
~~~

Resources are grouped by provider module. For example, a resource constructor
is exposed as `provider.<module>.<Resource>(...)`. See
[`example/main.dart`](example/main.dart) for a runnable example.

~~~sh
# Run these commands from the package directory containing Pulumi.yaml.
dart pub get
pulumi preview
pulumi up
~~~

Generated resource arguments accept Pulumi `Input<T>` values. Plain Dart
values can be converted with `.input()` after importing
`package:pulumi/pulumi.dart`.

## Alternative: Use directly from GitHub

~~~yaml
dependencies:
  pulumi_component:
    git:
      url: https://github.com/kingwill101/pulumi-dart.git
      path: packages/sdks/component
      ref: master
~~~

For package-specific resources, arguments, and outputs, use the generated Dart
API documentation and the upstream provider documentation linked above.
