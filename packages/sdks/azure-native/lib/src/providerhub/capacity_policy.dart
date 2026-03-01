/// Capacity policy.
enum CapacityPolicy {
  default_("Default"),
  restricted("Restricted");

  const CapacityPolicy(this.value);
  final String value;

  static CapacityPolicy fromValue(String value) {
    for (final item in CapacityPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapacityPolicy value: $value');
  }
}

