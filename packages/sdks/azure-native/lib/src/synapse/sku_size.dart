/// SKU size.
enum SkuSize {
  valueExtraSmall("Extra small"),
  valueSmall("Small"),
  valueMedium("Medium"),
  valueLarge("Large");

  const SkuSize(this.wireValue);
  final String wireValue;

  static SkuSize fromValue(String value) {
    for (final item in SkuSize.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuSize value: $value');
  }
}

