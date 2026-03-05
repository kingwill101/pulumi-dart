/// Modeling frequency controls the modeling compute frequency.
enum ModelingFrequency {
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

  const ModelingFrequency(this.wireValue);
  final String wireValue;

  static ModelingFrequency fromValue(String value) {
    for (final item in ModelingFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelingFrequency value: $value');
  }
}

