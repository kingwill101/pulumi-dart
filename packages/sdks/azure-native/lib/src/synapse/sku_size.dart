/// SKU size.
enum SkuSize {
  valueExtraSmall("Extra small"),
  valueSmall("Small"),
  valueMedium("Medium"),
  valueLarge("Large");

  const SkuSize(this.value);
  final String value;

  static SkuSize fromValue(String value) {
    for (final item in SkuSize.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuSize value: $value');
  }
}

