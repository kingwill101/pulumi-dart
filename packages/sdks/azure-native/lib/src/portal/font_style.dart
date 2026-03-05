/// Style of terminal font.
enum FontStyle {
  valueNotSpecified("NotSpecified"),
  valueMonospace("Monospace"),
  valueCourier("Courier");

  const FontStyle(this.wireValue);
  final String wireValue;

  static FontStyle fromValue(String value) {
    for (final item in FontStyle.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FontStyle value: $value');
  }
}

