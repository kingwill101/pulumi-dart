// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_snapshot_schedule_policy_retention_policy_response.dart';
import 'resource_policy_snapshot_schedule_policy_schedule_response.dart';
import 'resource_policy_snapshot_schedule_policy_snapshot_properties_response.dart';

/// A snapshot schedule policy specifies when and how frequently snapshots are to be created for the target disk. Also specifies how many and how long these scheduled snapshots should be retained.
class ResourcePolicySnapshotSchedulePolicyResponse {
  /// Retention policy applied to snapshots created by this resource policy.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse> retentionPolicy;
  /// A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyScheduleResponse> schedule;
  /// Properties with which snapshots are created such as labels, encryption keys.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponse> snapshotProperties;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyResponse].
  /// [retentionPolicy] Retention policy applied to snapshots created by this resource policy.
  /// [schedule] A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  /// [snapshotProperties] Properties with which snapshots are created such as labels, encryption keys.
  ResourcePolicySnapshotSchedulePolicyResponse({
    required this.retentionPolicy,
    required this.schedule,
    required this.snapshotProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPolicy': pulumi.Input.mapInputValue<ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'schedule': pulumi.Input.mapInputValue<ResourcePolicySnapshotSchedulePolicyScheduleResponse, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'snapshotProperties': pulumi.Input.mapInputValue<ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponse, Map<String, dynamic>>(snapshotProperties, (value) => value.toMap()),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyResponse.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyResponse(
      retentionPolicy: pulumi.Input.fromValue(ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse.fromMap((map['retentionPolicy']! as Map).cast<String, dynamic>())),
      schedule: pulumi.Input.fromValue(ResourcePolicySnapshotSchedulePolicyScheduleResponse.fromMap((map['schedule']! as Map).cast<String, dynamic>())),
      snapshotProperties: pulumi.Input.fromValue(ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponse.fromMap((map['snapshotProperties']! as Map).cast<String, dynamic>())),
    );
  }
}

