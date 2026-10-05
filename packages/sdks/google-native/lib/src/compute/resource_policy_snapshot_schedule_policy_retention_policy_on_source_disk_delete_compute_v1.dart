import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
enum ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeV1 implements pulumi.PulumiEnum<String> {
  applyRetentionPolicy("APPLY_RETENTION_POLICY"),
  keepAutoSnapshots("KEEP_AUTO_SNAPSHOTS"),
  unspecifiedOnSourceDiskDelete("UNSPECIFIED_ON_SOURCE_DISK_DELETE");

  const ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeV1(this.wireValue);
  @override
  final String wireValue;

  static ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeV1 fromValue(String value) {
    for (final item in ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeV1 value: $value');
  }
}
