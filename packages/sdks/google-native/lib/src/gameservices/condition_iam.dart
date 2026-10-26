import 'package:pulumi/pulumi.dart' as pulumi;

/// Trusted attributes supplied by the IAM system.
enum ConditionIam implements pulumi.PulumiEnum<String> {
  noAttr("NO_ATTR"),
  authority("AUTHORITY"),
  attribution("ATTRIBUTION"),
  securityRealm("SECURITY_REALM"),
  approver("APPROVER"),
  justificationType("JUSTIFICATION_TYPE"),
  credentialsType("CREDENTIALS_TYPE"),
  credsAssertion("CREDS_ASSERTION");

  const ConditionIam(this.wireValue);
  @override
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
