/// Flag indicates if this package is in preview.
enum Flag {
  valueTrue("true"),
  valueFalse("false");

  const Flag(this.wireValue);
  final String wireValue;

  static Flag fromValue(String value) {
    for (final item in Flag.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Flag value: $value');
  }
}

