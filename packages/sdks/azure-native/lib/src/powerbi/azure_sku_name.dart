/// SKU name
enum AzureSkuName {
  valueS1("S1");

  const AzureSkuName(this.wireValue);
  final String wireValue;

  static AzureSkuName fromValue(String value) {
    for (final item in AzureSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSkuName value: $value');
  }
}
