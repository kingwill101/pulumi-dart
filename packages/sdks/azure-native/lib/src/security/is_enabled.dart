/// Indicates whether the extension is enabled.
enum IsEnabled {
  true_("True"),
  false_("False");

  const IsEnabled(this.wireValue);
  final String wireValue;

  static IsEnabled fromValue(String value) {
    for (final item in IsEnabled.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsEnabled value: $value');
  }
}
