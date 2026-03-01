/// Emission format type.
enum EmissionType {
  valueIPFIX("IPFIX");

  const EmissionType(this.value);
  final String value;

  static EmissionType fromValue(String value) {
    for (final item in EmissionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EmissionType value: $value');
  }
}

