/// Tier of a public IP prefix SKU.
enum PublicIPPrefixSkuTier {
  valueRegional("Regional"),
  valueGlobal("Global");

  const PublicIPPrefixSkuTier(this.wireValue);
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
