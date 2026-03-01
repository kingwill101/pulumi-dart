// ignore_for_file: unused_element, unnecessary_cast


class ResourcePolicySnapshotSchedulePolicyRetentionPolicy {
  /// Maximum age of the snapshot that is allowed to be kept.
  final int maxRetentionDays;
  /// Specifies the behavior to apply to scheduled snapshots when
  /// the source disk is deleted.
  /// Default value is `KEEP_AUTO_SNAPSHOTS`.
  /// Possible values are: `KEEP_AUTO_SNAPSHOTS`, `APPLY_RETENTION_POLICY`.
  final String? onSourceDiskDelete;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyRetentionPolicy].
  /// [maxRetentionDays] Maximum age of the snapshot that is allowed to be kept.
  /// [onSourceDiskDelete] Specifies the behavior to apply to scheduled snapshots when
  ResourcePolicySnapshotSchedulePolicyRetentionPolicy({
    required this.maxRetentionDays,
    this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetentionDays': maxRetentionDays,
      'onSourceDiskDelete': ?onSourceDiskDelete,
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicy(
      maxRetentionDays: map['maxRetentionDays'] as int,
      onSourceDiskDelete: map['onSourceDiskDelete'] == null ? null : map['onSourceDiskDelete'] as String,
    );
  }
}

