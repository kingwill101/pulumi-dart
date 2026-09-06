import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of a public IP prefix SKU.
enum PublicIPPrefixSkuName implements pulumi.PulumiEnum<String> {
  valueStandard("Standard");

  const PublicIPPrefixSkuName(this.wireValue);
  @override
  final String wireValue;

  static PublicIPPrefixSkuName fromValue(String value) {
    for (final item in PublicIPPrefixSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPPrefixSkuName value: $value');
  }
}
