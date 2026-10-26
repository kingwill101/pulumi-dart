import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
enum ConditionIamComputeV1 implements pulumi.PulumiEnum<String> {
  approver("APPROVER"),
  attribution("ATTRIBUTION"),
  authority("AUTHORITY"),
  credentialsType("CREDENTIALS_TYPE"),
  credsAssertion("CREDS_ASSERTION"),
  justificationType("JUSTIFICATION_TYPE"),
  noAttr("NO_ATTR"),
  securityRealm("SECURITY_REALM");

  const ConditionIamComputeV1(this.wireValue);
  @override
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
