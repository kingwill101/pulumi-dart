// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_snapshot_schedule_policy_retention_policy_on_source_disk_delete_compute_v1.dart';

/// Policy for retention of scheduled snapshots.
class ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeV1 {
  /// Maximum age of the snapshot that is allowed to be kept.
  final pulumi.Input<int>? maxRetentionDays;
  /// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeV1>? onSourceDiskDelete;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeV1].
  /// [maxRetentionDays] Maximum age of the snapshot that is allowed to be kept.
  /// [onSourceDiskDelete] Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeV1({
    this.maxRetentionDays,
    this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetentionDays': ?maxRetentionDays,
      'onSourceDiskDelete': ?pulumi.Input.mapOptionalInputValue<ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeV1, String>(onSourceDiskDelete, (value) => value.value),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeV1(
      maxRetentionDays: map['maxRetentionDays'] == null ? null : (map['maxRetentionDays'] as int).input(),
      onSourceDiskDelete: map['onSourceDiskDelete'] == null ? null : (ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeV1.fromValue(map['onSourceDiskDelete'] as String)).input(),
    );
  }
}

