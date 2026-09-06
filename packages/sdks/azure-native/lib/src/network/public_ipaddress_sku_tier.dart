import 'package:pulumi/pulumi.dart' as pulumi;

/// Tier of a public IP address SKU.
enum PublicIPAddressSkuTier implements pulumi.PulumiEnum<String> {
  valueRegional("Regional"),
  valueGlobal("Global");

  const PublicIPAddressSkuTier(this.wireValue);
  @override
  final String wireValue;

  static PublicIPAddressSkuTier fromValue(String value) {
    for (final item in PublicIPAddressSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPAddressSkuTier value: $value');
  }
}
