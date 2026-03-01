/// The name of the Azure pricing tier to which the SKU applies.
enum VCoreSkuTier {
  autoScale("AutoScale");

  const VCoreSkuTier(this.value);
  final String value;

  static VCoreSkuTier fromValue(String value) {
    for (final item in VCoreSkuTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VCoreSkuTier value: $value');
  }
}

