/// Volume size
enum SizeTypes {
  valueSmall("Small"),
  valueMedium("Medium"),
  valueLarge("Large");

  const SizeTypes(this.wireValue);
  final String wireValue;

  static SizeTypes fromValue(String value) {
    for (final item in SizeTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SizeTypes value: $value');
  }
}
