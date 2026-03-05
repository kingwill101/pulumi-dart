/// Type of support
enum SupportType {
  valueSupplementalServicing("SupplementalServicing"),
  valuePremiumAssurance("PremiumAssurance");

  const SupportType(this.wireValue);
  final String wireValue;

  static SupportType fromValue(String value) {
    for (final item in SupportType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportType value: $value');
  }
}

