/// Sets which mode to use for Security Posture features.
enum SecurityPostureConfigModeContainerV1beta1 {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  basic("BASIC");

  const SecurityPostureConfigModeContainerV1beta1(this.wireValue);
  final String wireValue;

  static SecurityPostureConfigModeContainerV1beta1 fromValue(String value) {
    for (final item in SecurityPostureConfigModeContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecurityPostureConfigModeContainerV1beta1 value: $value',
    );
  }
}
