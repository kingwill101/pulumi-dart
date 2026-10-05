import 'package:pulumi/pulumi.dart' as pulumi;

enum ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch implements pulumi.PulumiEnum<String> {
  doNotRetroactivelyApply("DO_NOT_RETROACTIVELY_APPLY"),
  retroactivelyApply("RETROACTIVELY_APPLY"),
  unspecifiedOnPolicySwitch("UNSPECIFIED_ON_POLICY_SWITCH");

  const ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch(this.wireValue);
  @override
  final String wireValue;

  static ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch fromValue(String value) {
    for (final item in ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch value: $value');
  }
}
