import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the security type of the nodeType. Only Standard and TrustedLaunch are currently supported
enum SecurityType implements pulumi.PulumiEnum<String> {
  valueTrustedLaunch("TrustedLaunch"),
  valueStandard("Standard");

  const SecurityType(this.wireValue);
  @override
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
