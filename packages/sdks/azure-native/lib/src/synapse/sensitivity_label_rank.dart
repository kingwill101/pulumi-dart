enum SensitivityLabelRank {
  valueNone("None"),
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High"),
  valueCritical("Critical");

  const SensitivityLabelRank(this.wireValue);
  final String wireValue;

  static SensitivityLabelRank fromValue(String value) {
    for (final item in SensitivityLabelRank.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SensitivityLabelRank value: $value');
  }
}

