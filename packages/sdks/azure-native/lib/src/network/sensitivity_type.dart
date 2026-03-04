/// Describes the override sensitivity to be applied when rule matches.
enum SensitivityType {
  valueNone("None"),
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

  const SensitivityType(this.wireValue);
  final String wireValue;

  static SensitivityType fromValue(String value) {
    for (final item in SensitivityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SensitivityType value: $value');
  }
}
