/// Defines the SAP Product type.
enum SAPProductType {
  eCC("ECC"),
  s4HANA("S4HANA"),
  other("Other");

  const SAPProductType(this.wireValue);
  final String wireValue;

  static SAPProductType fromValue(String value) {
    for (final item in SAPProductType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPProductType value: $value');
  }
}
