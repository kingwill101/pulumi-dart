// ignore_for_file: unused_element, unnecessary_cast


/// Policy for retention of scheduled snapshots.
class ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse {
  /// Maximum age of the snapshot that is allowed to be kept.
  final int maxRetentionDays;
  final String onPolicySwitch;
  /// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  final String onSourceDiskDelete;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse].
  /// [maxRetentionDays] Maximum age of the snapshot that is allowed to be kept.
  /// [onPolicySwitch] Required.
  /// [onSourceDiskDelete] Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse({
    required this.maxRetentionDays,
    required this.onPolicySwitch,
    required this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetentionDays': maxRetentionDays,
      'onPolicySwitch': onPolicySwitch,
      'onSourceDiskDelete': onSourceDiskDelete,
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse(
      maxRetentionDays: map['maxRetentionDays'] as int,
      onPolicySwitch: map['onPolicySwitch'] as String,
      onSourceDiskDelete: map['onSourceDiskDelete'] as String,
    );
  }
}

