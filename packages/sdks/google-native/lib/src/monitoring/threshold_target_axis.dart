/// The target axis to use for plotting the threshold. Target axis is not allowed in a Scorecard.
enum ThresholdTargetAxis {
  targetAxisUnspecified("TARGET_AXIS_UNSPECIFIED"),
  y1("Y1"),
  y2("Y2");

  const ThresholdTargetAxis(this.wireValue);
  final String wireValue;

  static ThresholdTargetAxis fromValue(String value) {
    for (final item in ThresholdTargetAxis.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ThresholdTargetAxis value: $value');
  }
}

