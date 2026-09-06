import 'package:pulumi/pulumi.dart' as pulumi;

/// A value indicating whether trusted platform module to be enabled.
enum SecurityConfiguration implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const SecurityConfiguration(this.wireValue);
  @override
  final String wireValue;

  static SecurityConfiguration fromValue(String value) {
    for (final item in SecurityConfiguration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityConfiguration value: $value');
  }
}
