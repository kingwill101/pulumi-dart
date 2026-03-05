/// Size of terminal font.
enum FontSize {
  valueNotSpecified("NotSpecified"),
  valueSmall("Small"),
  valueMedium("Medium"),
  valueLarge("Large");

  const FontSize(this.wireValue);
  final String wireValue;

  static FontSize fromValue(String value) {
    for (final item in FontSize.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FontSize value: $value');
  }
}

