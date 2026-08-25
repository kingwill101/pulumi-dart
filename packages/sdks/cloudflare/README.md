# pulumi_cloudflare

A Pulumi package for creating and managing Cloudflare cloud resources.

Provider documentation: [Pulumi Registry](https://www.pulumi.com/registry/packages/cloudflare/)
Upstream repository: [https://github.com/pulumi/pulumi-cloudflare](https://github.com/pulumi/pulumi-cloudflare)

This package is generated from the upstream Pulumi provider schema. It requires
the [Pulumi Dart SDK](https://pub.dev/packages/pulumi) and the
`pulumi-language-dart` language host.

## Installation

~~~sh
dart pub add pulumi_cloudflare
~~~

## Usage

~~~dart
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_cloudflare/pulumi_cloudflare.dart' as provider;
~~~

Resources are grouped by provider module. For example, a resource constructor
is exposed as `provider.<module>.<Resource>(...)`. See
[`example/main.dart`](example/main.dart) for a runnable example.

~~~sh
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
  pulumi_cloudflare:
    git:
      url: https://github.com/kingwill101/pulumi-dart.git
      path: packages/sdks/cloudflare
      ref: master
~~~

For package-specific resources, arguments, and outputs, use the generated Dart
API documentation and the upstream provider documentation linked above.
