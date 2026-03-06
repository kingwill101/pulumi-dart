// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_snapshot_schedule_policy_retention_policy_response_compute_v1.dart';
import 'resource_policy_snapshot_schedule_policy_schedule_response_compute_v1.dart';
import 'resource_policy_snapshot_schedule_policy_snapshot_properties_response_compute_v1.dart';

/// A snapshot schedule policy specifies when and how frequently snapshots are to be created for the target disk. Also specifies how many and how long these scheduled snapshots should be retained.
class ResourcePolicySnapshotSchedulePolicyResponseComputeV1 {
  /// Retention policy applied to snapshots created by this resource policy.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeV1> retentionPolicy;
  /// A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeV1> schedule;
  /// Properties with which snapshots are created such as labels, encryption keys.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeV1> snapshotProperties;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyResponseComputeV1].
  /// [retentionPolicy] Retention policy applied to snapshots created by this resource policy.
  /// [schedule] A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  /// [snapshotProperties] Properties with which snapshots are created such as labels, encryption keys.
  const ResourcePolicySnapshotSchedulePolicyResponseComputeV1({
    required this.retentionPolicy,
    required this.schedule,
    required this.snapshotProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPolicy': pulumi.Input.mapInputValue<ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeV1, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'schedule': pulumi.Input.mapInputValue<ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeV1, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'snapshotProperties': pulumi.Input.mapInputValue<ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeV1, Map<String, dynamic>>(snapshotProperties, (value) => value.toMap()),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyResponseComputeV1(
      retentionPolicy: pulumi.Input.fromValue(ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeV1.fromMap((map['retentionPolicy']! as Map).cast<String, dynamic>())),
      schedule: pulumi.Input.fromValue(ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeV1.fromMap((map['schedule']! as Map).cast<String, dynamic>())),
      snapshotProperties: pulumi.Input.fromValue(ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeV1.fromMap((map['snapshotProperties']! as Map).cast<String, dynamic>())),
    );
  }
}

