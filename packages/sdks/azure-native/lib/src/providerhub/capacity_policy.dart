/// Capacity policy.
enum CapacityPolicy {
  default_("Default"),
  restricted("Restricted");

  const CapacityPolicy(this.wireValue);
  final String wireValue;

  static CapacityPolicy fromValue(String value) {
    for (final item in CapacityPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapacityPolicy value: $value');
  }
}

