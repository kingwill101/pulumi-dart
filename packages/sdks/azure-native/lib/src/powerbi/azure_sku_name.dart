/// SKU name
enum AzureSkuName {
  valueS1("S1");

  const AzureSkuName(this.value);
  final String value;

  static AzureSkuName fromValue(String value) {
    for (final item in AzureSkuName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSkuName value: $value');
  }
}

