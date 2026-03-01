/// Flag if global mesh is supported.
enum IsGlobal {
  valueFalse("False"),
  valueTrue("True");

  const IsGlobal(this.value);
  final String value;

  static IsGlobal fromValue(String value) {
    for (final item in IsGlobal.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsGlobal value: $value');
  }
}

