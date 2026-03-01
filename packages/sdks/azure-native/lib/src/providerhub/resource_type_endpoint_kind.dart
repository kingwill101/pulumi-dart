/// Resource type endpoint kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
enum ResourceTypeEndpointKind {
  managed("Managed"),
  direct("Direct");

  const ResourceTypeEndpointKind(this.value);
  final String value;

  static ResourceTypeEndpointKind fromValue(String value) {
    for (final item in ResourceTypeEndpointKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceTypeEndpointKind value: $value');
  }
}

