import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
enum ConditionIamComputeBeta implements pulumi.PulumiEnum<String> {
  approver("APPROVER"),
  attribution("ATTRIBUTION"),
  authority("AUTHORITY"),
  credentialsType("CREDENTIALS_TYPE"),
  credsAssertion("CREDS_ASSERTION"),
  justificationType("JUSTIFICATION_TYPE"),
  noAttr("NO_ATTR"),
  securityRealm("SECURITY_REALM");

  const ConditionIamComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static ConditionIamComputeBeta fromValue(String value) {
    for (final item in ConditionIamComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionIamComputeBeta value: $value');
  }
}
