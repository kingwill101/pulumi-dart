# pulumi_azure

A Pulumi package for creating and managing Microsoft Azure cloud resources, based on the Terraform azurerm provider. We recommend using the [Azure Native provider](https://github.com/pulumi/pulumi-azure-native) to provision Azure infrastructure. Azure Native provides complete coverage of Azure resources and same-day access to new resources and resource updates.

Provider documentation: [Pulumi Registry](https://www.pulumi.com/registry/packages/azure/)
Upstream repository: [https://github.com/pulumi/pulumi-azure](https://github.com/pulumi/pulumi-azure)

This package is generated from the upstream Pulumi provider schema. It requires
the [Pulumi Dart SDK](https://pub.dev/packages/pulumi) and the
`pulumi-language-dart` language host.

## Installation

~~~sh
dart pub add pulumi_azure
~~~

## Usage

~~~dart
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure/pulumi_azure.dart' as provider;
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
  pulumi_azure:
    git:
      url: https://github.com/kingwill101/pulumi-dart.git
      path: packages/sdks/azure
      ref: master
~~~

For package-specific resources, arguments, and outputs, use the generated Dart
API documentation and the upstream provider documentation linked above.
