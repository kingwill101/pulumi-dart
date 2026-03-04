/// The severity for alerts created by this alert rule.
enum AlertSeverity {
  valueHigh("High"),
  valueMedium("Medium"),
  valueLow("Low"),
  valueInformational("Informational");

  const AlertSeverity(this.wireValue);
  final String wireValue;

  static AlertSeverity fromValue(String value) {
    for (final item in AlertSeverity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertSeverity value: $value');
  }
}
