import 'package:pulumi/pulumi.dart' as pulumi;

/// The axis scale. By default, a linear scale is used.
enum AxisScale implements pulumi.PulumiEnum<String> {
  scaleUnspecified("SCALE_UNSPECIFIED"),
  linear("LINEAR"),
  log10("LOG10");

  const AxisScale(this.wireValue);
  @override
  final String wireValue;

  static AxisScale fromValue(String value) {
    for (final item in AxisScale.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AxisScale value: $value');
  }
}
