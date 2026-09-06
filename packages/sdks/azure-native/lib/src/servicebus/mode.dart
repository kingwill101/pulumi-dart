import 'package:pulumi/pulumi.dart' as pulumi;

/// Setting to Enable or Disable Confidential Compute
enum Mode implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const Mode(this.wireValue);
  @override
  final String wireValue;

  static Mode fromValue(String value) {
    for (final item in Mode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Mode value: $value');
  }
}
