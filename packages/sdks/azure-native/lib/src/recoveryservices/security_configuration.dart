/// A value indicating whether trusted platform module to be enabled.
enum SecurityConfiguration {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const SecurityConfiguration(this.wireValue);
  final String wireValue;

  static SecurityConfiguration fromValue(String value) {
    for (final item in SecurityConfiguration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityConfiguration value: $value');
  }
}

