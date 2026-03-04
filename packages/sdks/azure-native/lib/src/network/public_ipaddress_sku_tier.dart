/// Tier of a public IP address SKU.
enum PublicIPAddressSkuTier {
  valueRegional("Regional"),
  valueGlobal("Global");

  const PublicIPAddressSkuTier(this.wireValue);
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
