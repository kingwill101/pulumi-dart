/// Defines the minimal alert severity which will be sent as email notifications
enum MinimalSeverity {
  valueHigh("High"),
  valueMedium("Medium"),
  valueLow("Low");

  const MinimalSeverity(this.wireValue);
  final String wireValue;

  static MinimalSeverity fromValue(String value) {
    for (final item in MinimalSeverity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MinimalSeverity value: $value');
  }
}
