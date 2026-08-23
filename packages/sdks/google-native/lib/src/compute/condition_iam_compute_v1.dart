/// This is deprecated and has no effect. Do not use.
enum ConditionIamComputeV1 {
  approver("APPROVER"),
  attribution("ATTRIBUTION"),
  authority("AUTHORITY"),
  credentialsType("CREDENTIALS_TYPE"),
  credsAssertion("CREDS_ASSERTION"),
  justificationType("JUSTIFICATION_TYPE"),
  noAttr("NO_ATTR"),
  securityRealm("SECURITY_REALM");

  const ConditionIamComputeV1(this.wireValue);
  final String wireValue;

  static ConditionIamComputeV1 fromValue(String value) {
    for (final item in ConditionIamComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionIamComputeV1 value: $value');
  }
}
