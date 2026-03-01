/// Type of support
enum SupportType {
  valueSupplementalServicing("SupplementalServicing"),
  valuePremiumAssurance("PremiumAssurance");

  const SupportType(this.value);
  final String value;

  static SupportType fromValue(String value) {
    for (final item in SupportType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportType value: $value');
  }
}

