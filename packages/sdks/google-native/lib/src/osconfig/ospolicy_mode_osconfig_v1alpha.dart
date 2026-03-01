/// Required. Policy mode
enum OSPolicyModeOsconfigV1alpha {
  modeUnspecified("MODE_UNSPECIFIED"),
  validation("VALIDATION"),
  enforcement("ENFORCEMENT");

  const OSPolicyModeOsconfigV1alpha(this.value);
  final String value;

  static OSPolicyModeOsconfigV1alpha fromValue(String value) {
    for (final item in OSPolicyModeOsconfigV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSPolicyModeOsconfigV1alpha value: $value');
  }
}

