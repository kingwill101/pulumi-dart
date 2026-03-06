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
  const ResourcePolicySnapshotSchedulePolicyRetentionPolicy({
    this.maxRetentionDays,
    this.onPolicySwitch,
    this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetentionDays': ?maxRetentionDays,
      'onPolicySwitch': ?pulumi.Input.mapOptionalInputValue<ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch, String>(onPolicySwitch, (value) => value.wireValue),
      'onSourceDiskDelete': ?pulumi.Input.mapOptionalInputValue<ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete, String>(onSourceDiskDelete, (value) => value.wireValue),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicy(
      maxRetentionDays: (() { final guardedValue = map['maxRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      onPolicySwitch: (() { final guardedValue = map['onPolicySwitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch.fromValue(guardedValue as String)); })(),
      onSourceDiskDelete: (() { final guardedValue = map['onSourceDiskDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete.fromValue(guardedValue as String)); })(),
    );
  }
}

