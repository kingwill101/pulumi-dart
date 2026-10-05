import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets which mode to use for Security Posture features.
enum SecurityPostureConfigModeGkehubV1alpha implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  basic("BASIC");

  const SecurityPostureConfigModeGkehubV1alpha(this.wireValue);
  @override
  final String wireValue;

  static SecurityPostureConfigModeGkehubV1alpha fromValue(String value) {
    for (final item in SecurityPostureConfigModeGkehubV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPostureConfigModeGkehubV1alpha value: $value');
  }
}
