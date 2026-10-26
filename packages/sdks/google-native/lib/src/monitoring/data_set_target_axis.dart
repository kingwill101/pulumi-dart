import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The target axis to use for plotting the metric.
enum DataSetTargetAxis implements pulumi.PulumiEnum<String> {
  targetAxisUnspecified("TARGET_AXIS_UNSPECIFIED"),
  y1("Y1"),
  y2("Y2");

  const DataSetTargetAxis(this.wireValue);
  @override
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
