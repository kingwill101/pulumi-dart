// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_snapshot_schedule_policy_retention_policy_on_policy_switch.dart';
import 'resource_policy_snapshot_schedule_policy_retention_policy_on_source_disk_delete.dart';

/// Policy for retention of scheduled snapshots.
class ResourcePolicySnapshotSchedulePolicyRetentionPolicy {
  /// Maximum age of the snapshot that is allowed to be kept.
  final pulumi.Input<int>? maxRetentionDays;
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch>? onPolicySwitch;
  /// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete>? onSourceDiskDelete;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyRetentionPolicy].
  /// [maxRetentionDays] Maximum age of the snapshot that is allowed to be kept.
  /// [onPolicySwitch] Optional.
  /// [onSourceDiskDelete] Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  ResourcePolicySnapshotSchedulePolicyRetentionPolicy({
    this.maxRetentionDays,
    this.onPolicySwitch,
    this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetentionDays': ?maxRetentionDays,
      'onPolicySwitch': ?pulumi.Input.mapOptionalInputValue<ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch, String>(onPolicySwitch, (value) => value.value),
      'onSourceDiskDelete': ?pulumi.Input.mapOptionalInputValue<ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete, String>(onSourceDiskDelete, (value) => value.value),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicy(
      maxRetentionDays: map['maxRetentionDays'] == null ? null : (map['maxRetentionDays']! as int).input(),
      onPolicySwitch: map['onPolicySwitch'] == null ? null : (ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch.fromValue(map['onPolicySwitch']! as String)).input(),
      onSourceDiskDelete: map['onSourceDiskDelete'] == null ? null : (ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete.fromValue(map['onSourceDiskDelete']! as String)).input(),
    );
  }
}

