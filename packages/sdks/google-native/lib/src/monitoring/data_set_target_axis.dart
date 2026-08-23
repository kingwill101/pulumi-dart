/// Optional. The target axis to use for plotting the metric.
enum DataSetTargetAxis {
  targetAxisUnspecified("TARGET_AXIS_UNSPECIFIED"),
  y1("Y1"),
  y2("Y2");

  const DataSetTargetAxis(this.wireValue);
  final String wireValue;

  static DataSetTargetAxis fromValue(String value) {
    for (final item in DataSetTargetAxis.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataSetTargetAxis value: $value');
  }
}
