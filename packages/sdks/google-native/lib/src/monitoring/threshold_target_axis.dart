import 'package:pulumi/pulumi.dart' as pulumi;

/// The target axis to use for plotting the threshold. Target axis is not allowed in a Scorecard.
enum ThresholdTargetAxis implements pulumi.PulumiEnum<String> {
  targetAxisUnspecified("TARGET_AXIS_UNSPECIFIED"),
  y1("Y1"),
  y2("Y2");

  const ThresholdTargetAxis(this.wireValue);
  @override
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
