import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU tier
enum AzureSkuTier implements pulumi.PulumiEnum<String> {
  valueStandard("Standard");

  const AzureSkuTier(this.wireValue);
  @override
  final String wireValue;

  static AzureSkuTier fromValue(String value) {
    for (final item in AzureSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSkuTier value: $value');
  }
}
