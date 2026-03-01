/// Defines the SAP Product type.
enum SAPProductType {
  eCC("ECC"),
  s4HANA("S4HANA"),
  other("Other");

  const SAPProductType(this.value);
  final String value;

  static SAPProductType fromValue(String value) {
    for (final item in SAPProductType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPProductType value: $value');
  }
}

