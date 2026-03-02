// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_daily_cycle_compute_v1.dart';
import 'resource_policy_hourly_cycle_compute_v1.dart';
import 'resource_policy_weekly_cycle_compute_v1.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicyScheduleComputeV1 {
  final pulumi.Input<ResourcePolicyDailyCycleComputeV1>? dailySchedule;
  final pulumi.Input<ResourcePolicyHourlyCycleComputeV1>? hourlySchedule;
  final pulumi.Input<ResourcePolicyWeeklyCycleComputeV1>? weeklySchedule;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyScheduleComputeV1].
  /// [dailySchedule] Optional.
  /// [hourlySchedule] Optional.
  /// [weeklySchedule] Optional.
  ResourcePolicySnapshotSchedulePolicyScheduleComputeV1({
    this.dailySchedule,
    this.hourlySchedule,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyDailyCycleComputeV1, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'hourlySchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyHourlyCycleComputeV1, Map<String, dynamic>>(hourlySchedule, (value) => value.toMap()),
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyWeeklyCycleComputeV1, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyScheduleComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyScheduleComputeV1(
      dailySchedule: map['dailySchedule'] == null ? null : (ResourcePolicyDailyCycleComputeV1.fromMap((map['dailySchedule'] as Map).cast<String, dynamic>())).input(),
      hourlySchedule: map['hourlySchedule'] == null ? null : (ResourcePolicyHourlyCycleComputeV1.fromMap((map['hourlySchedule'] as Map).cast<String, dynamic>())).input(),
      weeklySchedule: map['weeklySchedule'] == null ? null : (ResourcePolicyWeeklyCycleComputeV1.fromMap((map['weeklySchedule'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

