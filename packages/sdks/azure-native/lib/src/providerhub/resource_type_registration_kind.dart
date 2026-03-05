/// Resource type registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
enum ResourceTypeRegistrationKind {
  managed("Managed"),
  hybrid("Hybrid"),
  direct("Direct");

  const ResourceTypeRegistrationKind(this.wireValue);
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

