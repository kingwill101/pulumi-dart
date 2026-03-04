/// This is deprecated and has no effect. Do not use.
enum ConditionIam {
  approver("APPROVER"),
  attribution("ATTRIBUTION"),
  authority("AUTHORITY"),
  credentialsType("CREDENTIALS_TYPE"),
  credsAssertion("CREDS_ASSERTION"),
  justificationType("JUSTIFICATION_TYPE"),
  noAttr("NO_ATTR"),
  securityRealm("SECURITY_REALM");

  const ConditionIam(this.wireValue);
  final String wireValue;

  static ConditionIam fromValue(String value) {
    for (final item in ConditionIam.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionIam value: $value');
  }
}
