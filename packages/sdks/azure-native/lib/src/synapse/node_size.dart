/// The level of compute power that each node in the Big Data pool has.
enum NodeSize {
  valueNone("None"),
  valueSmall("Small"),
  valueMedium("Medium"),
  valueLarge("Large"),
  valueXLarge("XLarge"),
  valueXXLarge("XXLarge"),
  valueXXXLarge("XXXLarge");

  const NodeSize(this.value);
  final String value;

  static NodeSize fromValue(String value) {
    for (final item in NodeSize.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeSize value: $value');
  }
}

