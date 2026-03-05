/// The severity level of the assessment
enum Severity {
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

  const Severity(this.wireValue);
  final String wireValue;

  static Severity fromValue(String value) {
    for (final item in Severity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Severity value: $value');
  }
}

