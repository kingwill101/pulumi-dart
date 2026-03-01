/// Name of a public IP address SKU.
enum PublicIPAddressSkuName {
  valueBasic("Basic"),
  valueStandard("Standard");

  const PublicIPAddressSkuName(this.value);
  final String value;

  static PublicIPAddressSkuName fromValue(String value) {
    for (final item in PublicIPAddressSkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIPAddressSkuName value: $value');
  }
}

