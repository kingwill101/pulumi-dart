/// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
enum ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeBeta {
  applyRetentionPolicy("APPLY_RETENTION_POLICY"),
  keepAutoSnapshots("KEEP_AUTO_SNAPSHOTS"),
  unspecifiedOnSourceDiskDelete("UNSPECIFIED_ON_SOURCE_DISK_DELETE");

  const ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeBeta(this.wireValue);
  final String wireValue;

  static ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeBeta fromValue(String value) {
    for (final item in ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeBeta value: $value');
  }
}
