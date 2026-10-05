import 'package:pulumi/pulumi.dart' as pulumi;

/// The state color for this threshold. Color is not allowed in a XyChart.
enum ThresholdColor implements pulumi.PulumiEnum<String> {
  colorUnspecified("COLOR_UNSPECIFIED"),
  yellow("YELLOW"),
  red("RED");

  const ThresholdColor(this.wireValue);
  @override
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
