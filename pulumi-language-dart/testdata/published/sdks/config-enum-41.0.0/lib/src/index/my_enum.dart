enum MyEnum {
  one("one"),
  two("two"),
  three("three");

  const MyEnum(this.wireValue);
  final String wireValue;

  static MyEnum fromValue(String value) {
    for (final item in MyEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MyEnum value: $value');
  }
}
