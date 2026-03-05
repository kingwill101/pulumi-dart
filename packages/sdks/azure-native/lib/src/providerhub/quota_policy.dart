/// The quota policy.
enum QuotaPolicy {
  default_("Default"),
  none("None"),
  restricted("Restricted");

  const QuotaPolicy(this.wireValue);
  final String wireValue;

  static QuotaPolicy fromValue(String value) {
    for (final item in QuotaPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QuotaPolicy value: $value');
  }
}

