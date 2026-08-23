/// The chart mode.
enum ChartOptionsMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  color("COLOR"),
  xRay("X_RAY"),
  stats("STATS");

  const ChartOptionsMode(this.wireValue);
  final String wireValue;

  static ChartOptionsMode fromValue(String value) {
    for (final item in ChartOptionsMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChartOptionsMode value: $value');
  }
}
