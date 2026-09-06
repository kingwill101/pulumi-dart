import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom image security type.
enum ImageSecurityType implements pulumi.PulumiEnum<String> {
  valueStandard("Standard"),
  valueTrustedLaunch("TrustedLaunch");

  const ImageSecurityType(this.wireValue);
  @override
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
