import 'package:pulumi/pulumi.dart' as pulumi;

/// The chart mode.
enum ChartOptionsMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  color("COLOR"),
  xRay("X_RAY"),
  stats("STATS");

  const ChartOptionsMode(this.wireValue);
  @override
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
