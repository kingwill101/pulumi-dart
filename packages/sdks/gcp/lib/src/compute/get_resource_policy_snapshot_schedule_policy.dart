// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_policy_snapshot_schedule_policy_retention_policy.dart';
import 'get_resource_policy_snapshot_schedule_policy_schedule.dart';
import 'get_resource_policy_snapshot_schedule_policy_snapshot_property.dart';

class GetResourcePolicySnapshotSchedulePolicy {
  /// Retention policy applied to snapshots created by this resource policy.
  final pulumi.Input<
    List<GetResourcePolicySnapshotSchedulePolicyRetentionPolicy>
  >
  retentionPolicies;

  /// Contains one of an 'hourlySchedule', 'dailySchedule', or 'weeklySchedule'.
  final pulumi.Input<List<GetResourcePolicySnapshotSchedulePolicySchedule>>
  schedules;

  /// Properties with which the snapshots are created, such as labels.
  final pulumi.Input<
    List<GetResourcePolicySnapshotSchedulePolicySnapshotProperty>
  >
  snapshotProperties;

  /// Creates a new [GetResourcePolicySnapshotSchedulePolicy].
  /// [retentionPolicies] Retention policy applied to snapshots created by this resource policy.
  /// [schedules] Contains one of an 'hourlySchedule', 'dailySchedule', or 'weeklySchedule'.
  /// [snapshotProperties] Properties with which the snapshots are created, such as labels.
  GetResourcePolicySnapshotSchedulePolicy({
    required this.retentionPolicies,
    required this.schedules,
    required this.snapshotProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPolicies':
          pulumi.Input.mapInputValue<
            List<GetResourcePolicySnapshotSchedulePolicyRetentionPolicy>,
            List<Map<String, dynamic>>
          >(
            retentionPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  GetResourcePolicySnapshotSchedulePolicyRetentionPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'schedules':
          pulumi.Input.mapInputValue<
            List<GetResourcePolicySnapshotSchedulePolicySchedule>,
            List<Map<String, dynamic>>
          >(
            schedules,
            (value) =>
                pulumi.Input.encodeList<
                  GetResourcePolicySnapshotSchedulePolicySchedule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'snapshotProperties':
          pulumi.Input.mapInputValue<
            List<GetResourcePolicySnapshotSchedulePolicySnapshotProperty>,
            List<Map<String, dynamic>>
          >(
            snapshotProperties,
            (value) =>
                pulumi.Input.encodeList<
                  GetResourcePolicySnapshotSchedulePolicySnapshotProperty,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetResourcePolicySnapshotSchedulePolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResourcePolicySnapshotSchedulePolicy(
      retentionPolicies: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetResourcePolicySnapshotSchedulePolicyRetentionPolicy
        >(
          map['retentionPolicies']!,
          (value) =>
              GetResourcePolicySnapshotSchedulePolicyRetentionPolicy.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      schedules: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetResourcePolicySnapshotSchedulePolicySchedule>(
          map['schedules']!,
          (value) => GetResourcePolicySnapshotSchedulePolicySchedule.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      snapshotProperties: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetResourcePolicySnapshotSchedulePolicySnapshotProperty
        >(
          map['snapshotProperties']!,
          (value) =>
              GetResourcePolicySnapshotSchedulePolicySnapshotProperty.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
