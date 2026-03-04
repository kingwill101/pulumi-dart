// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_snapshot_schedule_policy_retention_policy_on_source_disk_delete_compute_beta.dart';

/// Policy for retention of scheduled snapshots.
class ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeBeta {
  /// Maximum age of the snapshot that is allowed to be kept.
  final pulumi.Input<int>? maxRetentionDays;

  /// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  final pulumi.Input<
    ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeBeta
  >?
  onSourceDiskDelete;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeBeta].
  /// [maxRetentionDays] Maximum age of the snapshot that is allowed to be kept.
  /// [onSourceDiskDelete] Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeBeta({
    this.maxRetentionDays,
    this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetentionDays': ?maxRetentionDays,
      'onSourceDiskDelete':
          ?pulumi.Input.mapOptionalInputValue<
            ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeBeta,
            String
          >(onSourceDiskDelete, (value) => value.wireValue),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeBeta(
      maxRetentionDays: (() {
        final guardedValue = map['maxRetentionDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      onSourceDiskDelete: (() {
        final guardedValue = map['onSourceDiskDelete'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeBeta.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
