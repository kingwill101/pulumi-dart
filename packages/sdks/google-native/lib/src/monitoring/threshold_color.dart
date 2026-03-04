/// The state color for this threshold. Color is not allowed in a XyChart.
enum ThresholdColor {
  colorUnspecified("COLOR_UNSPECIFIED"),
  yellow("YELLOW"),
  red("RED");

  const ThresholdColor(this.wireValue);
  final String wireValue;

  static ThresholdColor fromValue(String value) {
    for (final item in ThresholdColor.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ThresholdColor value: $value');
  }
}
