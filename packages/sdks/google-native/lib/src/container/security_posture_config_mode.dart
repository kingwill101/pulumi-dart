import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets which mode to use for Security Posture features.
enum SecurityPostureConfigMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  basic("BASIC");

  const SecurityPostureConfigMode(this.wireValue);
  @override
  final String wireValue;

  static SecurityPostureConfigMode fromValue(String value) {
    for (final item in SecurityPostureConfigMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPostureConfigMode value: $value');
  }
}
