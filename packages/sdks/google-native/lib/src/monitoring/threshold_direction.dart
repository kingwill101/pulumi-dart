/// The direction for the current threshold. Direction is not allowed in a XyChart.
enum ThresholdDirection {
  directionUnspecified("DIRECTION_UNSPECIFIED"),
  above("ABOVE"),
  below("BELOW");

  const ThresholdDirection(this.wireValue);
  final String wireValue;

  static ThresholdDirection fromValue(String value) {
    for (final item in ThresholdDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ThresholdDirection value: $value');
  }
}
