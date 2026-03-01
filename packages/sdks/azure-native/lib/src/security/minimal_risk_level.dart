/// Defines the minimal attach path risk level which will be sent as email notifications
enum MinimalRiskLevel {
  valueCritical("Critical"),
  valueHigh("High"),
  valueMedium("Medium"),
  valueLow("Low");

  const MinimalRiskLevel(this.value);
  final String value;

  static MinimalRiskLevel fromValue(String value) {
    for (final item in MinimalRiskLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MinimalRiskLevel value: $value');
  }
}

