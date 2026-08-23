/// Custom image security type.
enum ImageSecurityType {
  valueStandard("Standard"),
  valueTrustedLaunch("TrustedLaunch");

  const ImageSecurityType(this.wireValue);
  final String wireValue;

  static ImageSecurityType fromValue(String value) {
    for (final item in ImageSecurityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageSecurityType value: $value');
  }
}
