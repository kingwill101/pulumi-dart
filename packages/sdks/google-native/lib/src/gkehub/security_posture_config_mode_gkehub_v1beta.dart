import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets which mode to use for Security Posture features.
enum SecurityPostureConfigModeGkehubV1beta implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  basic("BASIC");

  const SecurityPostureConfigModeGkehubV1beta(this.wireValue);
  @override
  final String wireValue;

  static SecurityPostureConfigModeGkehubV1beta fromValue(String value) {
    for (final item in SecurityPostureConfigModeGkehubV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPostureConfigModeGkehubV1beta value: $value');
  }
}
