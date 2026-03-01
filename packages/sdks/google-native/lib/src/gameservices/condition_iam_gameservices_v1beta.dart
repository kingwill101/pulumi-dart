/// Trusted attributes supplied by the IAM system.
enum ConditionIamGameservicesV1beta {
  noAttr("NO_ATTR"),
  authority("AUTHORITY"),
  attribution("ATTRIBUTION"),
  securityRealm("SECURITY_REALM"),
  approver("APPROVER"),
  justificationType("JUSTIFICATION_TYPE"),
  credentialsType("CREDENTIALS_TYPE"),
  credsAssertion("CREDS_ASSERTION");

  const ConditionIamGameservicesV1beta(this.value);
  final String value;

  static ConditionIamGameservicesV1beta fromValue(String value) {
    for (final item in ConditionIamGameservicesV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionIamGameservicesV1beta value: $value');
  }
}

