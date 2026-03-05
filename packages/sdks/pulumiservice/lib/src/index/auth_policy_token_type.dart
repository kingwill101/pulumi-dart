enum AuthPolicyTokenType {
  valuePersonal("personal"),
  valueTeam("team"),
  valueOrganization("organization"),
  valueRunner("runner");

  const AuthPolicyTokenType(this.wireValue);
  final String wireValue;

  static AuthPolicyTokenType fromValue(String value) {
    for (final item in AuthPolicyTokenType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthPolicyTokenType value: $value');
  }
}

