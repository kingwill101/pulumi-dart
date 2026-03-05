/// Selection of how the threshold should be evaluated.
enum ValidationThresholdType {
  valueCountSuccess("CountSuccess"),
  valuePercentSuccess("PercentSuccess");

  const ValidationThresholdType(this.wireValue);
  final String wireValue;

  static ValidationThresholdType fromValue(String value) {
    for (final item in ValidationThresholdType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationThresholdType value: $value');
  }
}

