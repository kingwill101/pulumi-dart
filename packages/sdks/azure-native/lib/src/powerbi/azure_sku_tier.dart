/// SKU tier
enum AzureSkuTier {
  valueStandard("Standard");

  const AzureSkuTier(this.wireValue);
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

