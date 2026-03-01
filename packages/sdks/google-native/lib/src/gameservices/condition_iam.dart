/// Trusted attributes supplied by the IAM system.
enum ConditionIam {
  noAttr("NO_ATTR"),
  authority("AUTHORITY"),
  attribution("ATTRIBUTION"),
  securityRealm("SECURITY_REALM"),
  approver("APPROVER"),
  justificationType("JUSTIFICATION_TYPE"),
  credentialsType("CREDENTIALS_TYPE"),
  credsAssertion("CREDS_ASSERTION");

  const ConditionIam(this.value);
  final String value;

  static ConditionIam fromValue(String value) {
    for (final item in ConditionIam.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionIam value: $value');
  }
}

