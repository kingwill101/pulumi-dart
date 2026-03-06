// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_snapshot_schedule_policy_retention_policy_response_compute_beta.dart';
import 'resource_policy_snapshot_schedule_policy_schedule_response_compute_beta.dart';
import 'resource_policy_snapshot_schedule_policy_snapshot_properties_response_compute_beta.dart';

/// A snapshot schedule policy specifies when and how frequently snapshots are to be created for the target disk. Also specifies how many and how long these scheduled snapshots should be retained.
class ResourcePolicySnapshotSchedulePolicyResponseComputeBeta {
  /// Retention policy applied to snapshots created by this resource policy.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta> retentionPolicy;
  /// A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeBeta> schedule;
  /// Properties with which snapshots are created such as labels, encryption keys.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeBeta> snapshotProperties;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyResponseComputeBeta].
  /// [retentionPolicy] Retention policy applied to snapshots created by this resource policy.
  /// [schedule] A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  /// [snapshotProperties] Properties with which snapshots are created such as labels, encryption keys.
  const ResourcePolicySnapshotSchedulePolicyResponseComputeBeta({
    required this.retentionPolicy,
    required this.schedule,
    required this.snapshotProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPolicy': pulumi.Input.mapInputValue<ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'schedule': pulumi.Input.mapInputValue<ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeBeta, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'snapshotProperties': pulumi.Input.mapInputValue<ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeBeta, Map<String, dynamic>>(snapshotProperties, (value) => value.toMap()),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyResponseComputeBeta(
      retentionPolicy: pulumi.Input.fromValue(ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta.fromMap((map['retentionPolicy']! as Map).cast<String, dynamic>())),
      schedule: pulumi.Input.fromValue(ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeBeta.fromMap((map['schedule']! as Map).cast<String, dynamic>())),
      snapshotProperties: pulumi.Input.fromValue(ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeBeta.fromMap((map['snapshotProperties']! as Map).cast<String, dynamic>())),
    );
  }
}

