/// Specifies the security type of the nodeType. Only Standard and TrustedLaunch are currently supported
enum SecurityType {
  valueTrustedLaunch("TrustedLaunch"),
  valueStandard("Standard");

  const SecurityType(this.value);
  final String value;

  static SecurityType fromValue(String value) {
    for (final item in SecurityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityType value: $value');
  }
}

