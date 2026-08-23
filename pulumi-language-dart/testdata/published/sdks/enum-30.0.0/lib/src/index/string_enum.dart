enum StringEnum {
  stringOne("one"),
  stringTwo("two");

  const StringEnum(this.wireValue);
  final String wireValue;

  static StringEnum fromValue(String value) {
    for (final item in StringEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StringEnum value: $value');
  }
}
