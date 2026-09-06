import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource type registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
enum ResourceTypeRegistrationKind implements pulumi.PulumiEnum<String> {
  managed("Managed"),
  hybrid("Hybrid"),
  direct("Direct");

  const ResourceTypeRegistrationKind(this.wireValue);
  @override
  final String wireValue;

  static ResourceTypeRegistrationKind fromValue(String value) {
    for (final item in ResourceTypeRegistrationKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceTypeRegistrationKind value: $value');
  }
}
