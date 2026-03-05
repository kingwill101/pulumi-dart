/// Sets which mode to use for Security Posture features.
enum SecurityPostureConfigModeGkehubV1alpha {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  basic("BASIC");

  const SecurityPostureConfigModeGkehubV1alpha(this.wireValue);
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

