// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_snapshot_schedule_policy_retention_policy.dart';
import 'resource_policy_snapshot_schedule_policy_schedule.dart';
import 'resource_policy_snapshot_schedule_policy_snapshot_properties.dart';

class ResourcePolicySnapshotSchedulePolicy {
  /// Retention policy applied to snapshots created by this resource policy.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyRetentionPolicy>? retentionPolicy;
  /// Contains one of an `hourlySchedule`, `dailySchedule`, or `weeklySchedule`.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicySchedule> schedule;
  /// Properties with which the snapshots are created, such as labels.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicySnapshotProperties>? snapshotProperties;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicy].
  /// [retentionPolicy] Retention policy applied to snapshots created by this resource policy.
  /// [schedule] Contains one of an `hourlySchedule`, `dailySchedule`, or `weeklySchedule`.
  /// [snapshotProperties] Properties with which the snapshots are created, such as labels.
  ResourcePolicySnapshotSchedulePolicy({
    this.retentionPolicy,
    required this.schedule,
    this.snapshotProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<ResourcePolicySnapshotSchedulePolicyRetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'schedule': pulumi.Input.mapInputValue<ResourcePolicySnapshotSchedulePolicySchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'snapshotProperties': ?pulumi.Input.mapOptionalInputValue<ResourcePolicySnapshotSchedulePolicySnapshotProperties, Map<String, dynamic>>(snapshotProperties, (value) => value.toMap()),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicy(
      retentionPolicy: map['retentionPolicy'] == null ? null : (ResourcePolicySnapshotSchedulePolicyRetentionPolicy.fromMap((map['retentionPolicy']! as Map).cast<String, dynamic>())).input(),
      schedule: (ResourcePolicySnapshotSchedulePolicySchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())).input(),
      snapshotProperties: map['snapshotProperties'] == null ? null : (ResourcePolicySnapshotSchedulePolicySnapshotProperties.fromMap((map['snapshotProperties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

