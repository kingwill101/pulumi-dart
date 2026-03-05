/// Required. The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
enum AuthorizationPolicyAction {
  actionUnspecified("ACTION_UNSPECIFIED"),
  allow("ALLOW"),
  deny("DENY");

  const AuthorizationPolicyAction(this.wireValue);
  final String wireValue;

  static AuthorizationPolicyAction fromValue(String value) {
    for (final item in AuthorizationPolicyAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizationPolicyAction value: $value');
  }
}

