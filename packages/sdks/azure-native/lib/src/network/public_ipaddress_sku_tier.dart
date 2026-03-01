/// Tier of a public IP address SKU.
enum PublicIPAddressSkuTier {
  valueRegional("Regional"),
  valueGlobal("Global");

  const PublicIPAddressSkuTier(this.value);
  final String value;

  static PublicIPAddressSkuTier fromValue(String value) {
    for (final item in PublicIPAddressSkuTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPAddressSkuTier value: $value');
  }
}

