# pulumi_optional_primitive_ref

Dart SDK for the Pulumi optional-primitive-ref provider.

Provider documentation: [Pulumi Registry](https://www.pulumi.com/registry/packages/optional-primitive-ref/)

This package is generated from the upstream Pulumi provider schema. It requires
the [Pulumi Dart SDK](https://pub.dev/packages/pulumi) and the
`pulumi-language-dart` language host.

## Installation

~~~sh
dart pub add pulumi_optional_primitive_ref
~~~

## Usage

~~~dart
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_optional_primitive_ref/pulumi_optional_primitive_ref.dart' as provider;
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
  pulumi_optional_primitive_ref:
    git:
      url: https://github.com/kingwill101/pulumi-dart.git
      path: packages/sdks/optional-primitive-ref
      ref: master
~~~

For package-specific resources, arguments, and outputs, use the generated Dart
API documentation and the upstream provider documentation linked above.
