// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_snapshot_schedule_policy_retention_policy_compute_v1.dart';
import 'resource_policy_snapshot_schedule_policy_schedule_compute_v1.dart';
import 'resource_policy_snapshot_schedule_policy_snapshot_properties_compute_v1.dart';

/// A snapshot schedule policy specifies when and how frequently snapshots are to be created for the target disk. Also specifies how many and how long these scheduled snapshots should be retained.
class ResourcePolicySnapshotSchedulePolicyComputeV1 {
  /// Retention policy applied to snapshots created by this resource policy.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeV1>? retentionPolicy;
  /// A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyScheduleComputeV1>? schedule;
  /// Properties with which snapshots are created such as labels, encryption keys.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicySnapshotPropertiesComputeV1>? snapshotProperties;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyComputeV1].
  /// [retentionPolicy] Retention policy applied to snapshots created by this resource policy.
  /// [schedule] A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  /// [snapshotProperties] Properties with which snapshots are created such as labels, encryption keys.
  const ResourcePolicySnapshotSchedulePolicyComputeV1({
    this.retentionPolicy,
    this.schedule,
    this.snapshotProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeV1, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'schedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicySnapshotSchedulePolicyScheduleComputeV1, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'snapshotProperties': ?pulumi.Input.mapOptionalInputValue<ResourcePolicySnapshotSchedulePolicySnapshotPropertiesComputeV1, Map<String, dynamic>>(snapshotProperties, (value) => value.toMap()),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyComputeV1(
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicySnapshotSchedulePolicyScheduleComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshotProperties: (() { final guardedValue = map['snapshotProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicySnapshotSchedulePolicySnapshotPropertiesComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
