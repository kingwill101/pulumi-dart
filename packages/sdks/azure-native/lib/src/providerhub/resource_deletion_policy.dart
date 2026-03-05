/// The resource deletion policy.
enum ResourceDeletionPolicy {
  notSpecified("NotSpecified"),
  cascadeDeleteAll("CascadeDeleteAll"),
  cascadeDeleteProxyOnlyChildren("CascadeDeleteProxyOnlyChildren");

  const ResourceDeletionPolicy(this.wireValue);
  final String wireValue;

  static ResourceDeletionPolicy fromValue(String value) {
    for (final item in ResourceDeletionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceDeletionPolicy value: $value');
  }
}

