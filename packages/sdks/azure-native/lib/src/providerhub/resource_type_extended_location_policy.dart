enum ResourceTypeExtendedLocationPolicy {
  notSpecified("NotSpecified"),
  all("All");

  const ResourceTypeExtendedLocationPolicy(this.wireValue);
  final String wireValue;

  static ResourceTypeExtendedLocationPolicy fromValue(String value) {
    for (final item in ResourceTypeExtendedLocationPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ResourceTypeExtendedLocationPolicy value: $value',
    );
  }
}
