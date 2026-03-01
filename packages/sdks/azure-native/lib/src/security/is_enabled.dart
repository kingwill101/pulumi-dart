/// Indicates whether the extension is enabled.
enum IsEnabled {
  valueTrue("True"),
  valueFalse("False");

  const IsEnabled(this.value);
  final String value;

  static IsEnabled fromValue(String value) {
    for (final item in IsEnabled.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsEnabled value: $value');
  }
}

