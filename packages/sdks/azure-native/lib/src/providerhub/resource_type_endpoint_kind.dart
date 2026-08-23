/// Resource type endpoint kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
enum ResourceTypeEndpointKind {
  managed("Managed"),
  direct("Direct");

  const ResourceTypeEndpointKind(this.wireValue);
  final String wireValue;

  static ResourceTypeEndpointKind fromValue(String value) {
    for (final item in ResourceTypeEndpointKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceTypeEndpointKind value: $value');
  }
}
