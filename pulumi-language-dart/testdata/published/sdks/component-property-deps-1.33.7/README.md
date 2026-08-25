# pulumi_component_property_deps

Dart SDK for the Pulumi component-property-deps provider.

Provider documentation: [Pulumi Registry](https://www.pulumi.com/registry/packages/component-property-deps/)

This package is generated from the upstream Pulumi provider schema. It requires
the [Pulumi Dart SDK](https://pub.dev/packages/pulumi) and the
`pulumi-language-dart` language host.

## Installation

~~~sh
dart pub add pulumi_component_property_deps
~~~

## Usage

~~~dart
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_component_property_deps/pulumi_component_property_deps.dart' as provider;
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
  pulumi_component_property_deps:
    git:
      url: https://github.com/kingwill101/pulumi-dart.git
      path: packages/sdks/component-property-deps
      ref: master
~~~

For package-specific resources, arguments, and outputs, use the generated Dart
API documentation and the upstream provider documentation linked above.
