import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of a public IP address SKU.
enum PublicIPAddressSkuName implements pulumi.PulumiEnum<String> {
  valueBasic("Basic"),
  valueStandard("Standard");

  const PublicIPAddressSkuName(this.wireValue);
  @override
  final String wireValue;

  static PublicIPAddressSkuName fromValue(String value) {
    for (final item in PublicIPAddressSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPAddressSkuName value: $value');
  }
}
