/// The name of the Azure pricing tier to which the SKU applies.
enum VCoreSkuTier {
  autoScale("AutoScale");

  const VCoreSkuTier(this.wireValue);
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

