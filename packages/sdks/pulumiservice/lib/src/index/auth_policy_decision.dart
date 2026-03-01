enum AuthPolicyDecision {
  valueDeny("deny"),
  valueAllow("allow");

  const AuthPolicyDecision(this.value);
  final String value;

  static AuthPolicyDecision fromValue(String value) {
    for (final item in AuthPolicyDecision.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthPolicyDecision value: $value');
  }
}

