/// Name of a public IP prefix SKU.
enum PublicIPPrefixSkuName {
  valueStandard("Standard");

  const PublicIPPrefixSkuName(this.wireValue);
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
