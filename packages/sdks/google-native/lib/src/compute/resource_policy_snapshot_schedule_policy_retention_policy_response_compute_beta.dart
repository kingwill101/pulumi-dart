// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy for retention of scheduled snapshots.
class ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta {
  /// Maximum age of the snapshot that is allowed to be kept.
  final pulumi.Input<int> maxRetentionDays;
  /// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  final pulumi.Input<String> onSourceDiskDelete;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta].
  /// [maxRetentionDays] Maximum age of the snapshot that is allowed to be kept.
  /// [onSourceDiskDelete] Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta({
    required this.maxRetentionDays,
    required this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetentionDays': maxRetentionDays,
      'onSourceDiskDelete': onSourceDiskDelete,
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta(
      maxRetentionDays: (map['maxRetentionDays'] as int).input(),
      onSourceDiskDelete: (map['onSourceDiskDelete'] as String).input(),
    );
  }
}

