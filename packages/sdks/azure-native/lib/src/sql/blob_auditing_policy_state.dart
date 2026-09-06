import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the state of the audit. If state is Enabled, storageEndpoint or isAzureMonitorTargetEnabled are required.
enum BlobAuditingPolicyState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const BlobAuditingPolicyState(this.wireValue);
  @override
  final String wireValue;

  static BlobAuditingPolicyState fromValue(String value) {
    for (final item in BlobAuditingPolicyState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlobAuditingPolicyState value: $value');
  }
}
