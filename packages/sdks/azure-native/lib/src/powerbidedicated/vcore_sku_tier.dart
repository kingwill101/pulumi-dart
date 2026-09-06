import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the Azure pricing tier to which the SKU applies.
enum VCoreSkuTier implements pulumi.PulumiEnum<String> {
  autoScale("AutoScale");

  const VCoreSkuTier(this.wireValue);
  @override
  final String wireValue;

  static VCoreSkuTier fromValue(String value) {
    for (final item in VCoreSkuTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VCoreSkuTier value: $value');
  }
}
