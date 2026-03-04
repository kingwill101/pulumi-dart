/// Flag if global mesh is supported.
enum IsGlobal {
  valueFalse("False"),
  valueTrue("True");

  const IsGlobal(this.wireValue);
  final String wireValue;

  static IsGlobal fromValue(String value) {
    for (final item in IsGlobal.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsGlobal value: $value');
  }
}
