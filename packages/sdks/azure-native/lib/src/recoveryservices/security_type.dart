/// The target VM security type.
enum SecurityType {
  valueNone("None"),
  valueTrustedLaunch("TrustedLaunch"),
  valueConfidentialVM("ConfidentialVM");

  const SecurityType(this.wireValue);
  final String wireValue;

  static SecurityType fromValue(String value) {
    for (final item in SecurityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityType value: $value');
  }
}
