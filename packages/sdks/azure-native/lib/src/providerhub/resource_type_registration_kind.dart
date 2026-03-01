/// Resource type registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
enum ResourceTypeRegistrationKind {
  managed("Managed"),
  hybrid("Hybrid"),
  direct("Direct");

  const ResourceTypeRegistrationKind(this.value);
  final String value;

  static ResourceTypeRegistrationKind fromValue(String value) {
    for (final item in ResourceTypeRegistrationKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceTypeRegistrationKind value: $value');
  }
}

