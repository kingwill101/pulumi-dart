/// Required. Policy mode
enum OSPolicyModeOsconfigV1alpha {
  modeUnspecified("MODE_UNSPECIFIED"),
  validation("VALIDATION"),
  enforcement("ENFORCEMENT");

  const OSPolicyModeOsconfigV1alpha(this.wireValue);
  final String wireValue;

  static OSPolicyModeOsconfigV1alpha fromValue(String value) {
    for (final item in OSPolicyModeOsconfigV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSPolicyModeOsconfigV1alpha value: $value');
  }
}

