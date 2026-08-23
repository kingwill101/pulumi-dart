enum StringEnumMod {
  stringOne("one"),
  stringTwo("two");

  const StringEnumMod(this.wireValue);
  final String wireValue;

  static StringEnumMod fromValue(String value) {
    for (final item in StringEnumMod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StringEnumMod value: $value');
  }
}
