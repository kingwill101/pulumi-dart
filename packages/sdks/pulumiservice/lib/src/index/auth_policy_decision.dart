enum AuthPolicyDecision {
  valueDeny("deny"),
  valueAllow("allow");

  const AuthPolicyDecision(this.wireValue);
  final String wireValue;

  static AuthPolicyDecision fromValue(String value) {
    for (final item in AuthPolicyDecision.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthPolicyDecision value: $value');
  }
}
