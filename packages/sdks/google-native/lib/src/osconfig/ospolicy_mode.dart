/// Required. Policy mode
enum OSPolicyMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  validation("VALIDATION"),
  enforcement("ENFORCEMENT");

  const OSPolicyMode(this.wireValue);
  final String wireValue;

  static OSPolicyMode fromValue(String value) {
    for (final item in OSPolicyMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSPolicyMode value: $value');
  }
}
