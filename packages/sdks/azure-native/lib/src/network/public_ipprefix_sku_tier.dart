import 'package:pulumi/pulumi.dart' as pulumi;

/// Tier of a public IP prefix SKU.
enum PublicIPPrefixSkuTier implements pulumi.PulumiEnum<String> {
  valueRegional("Regional"),
  valueGlobal("Global");

  const PublicIPPrefixSkuTier(this.wireValue);
  @override
  final String wireValue;

  static PublicIPPrefixSkuTier fromValue(String value) {
    for (final item in PublicIPPrefixSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPPrefixSkuTier value: $value');
  }
}
