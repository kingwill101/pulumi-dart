/// Emission format type.
enum EmissionType {
  iPFIX("IPFIX");

  const EmissionType(this.wireValue);
  final String wireValue;

  static EmissionType fromValue(String value) {
    for (final item in EmissionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EmissionType value: $value');
  }
}
