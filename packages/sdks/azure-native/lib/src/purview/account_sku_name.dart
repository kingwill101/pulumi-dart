/// Gets or sets the sku name.
enum AccountSkuName {
  standard("Standard"),
  free("Free");

  const AccountSkuName(this.wireValue);
  final String wireValue;

  static AccountSkuName fromValue(String value) {
    for (final item in AccountSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccountSkuName value: $value');
  }
}
