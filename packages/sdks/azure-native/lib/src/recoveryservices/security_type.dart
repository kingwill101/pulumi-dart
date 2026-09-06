import 'package:pulumi/pulumi.dart' as pulumi;

/// The target VM security type.
enum SecurityType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueTrustedLaunch("TrustedLaunch"),
  valueConfidentialVM("ConfidentialVM");

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
