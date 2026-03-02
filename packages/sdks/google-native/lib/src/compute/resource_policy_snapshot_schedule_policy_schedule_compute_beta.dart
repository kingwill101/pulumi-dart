// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_daily_cycle_compute_beta.dart';
import 'resource_policy_hourly_cycle_compute_beta.dart';
import 'resource_policy_weekly_cycle_compute_beta.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicyScheduleComputeBeta {
  final pulumi.Input<ResourcePolicyDailyCycleComputeBeta>? dailySchedule;
  final pulumi.Input<ResourcePolicyHourlyCycleComputeBeta>? hourlySchedule;
  final pulumi.Input<ResourcePolicyWeeklyCycleComputeBeta>? weeklySchedule;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyScheduleComputeBeta].
  /// [dailySchedule] Optional.
  /// [hourlySchedule] Optional.
  /// [weeklySchedule] Optional.
  ResourcePolicySnapshotSchedulePolicyScheduleComputeBeta({
    this.dailySchedule,
    this.hourlySchedule,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyDailyCycleComputeBeta, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'hourlySchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyHourlyCycleComputeBeta, Map<String, dynamic>>(hourlySchedule, (value) => value.toMap()),
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyWeeklyCycleComputeBeta, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyScheduleComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyScheduleComputeBeta(
      dailySchedule: map['dailySchedule'] == null ? null : (ResourcePolicyDailyCycleComputeBeta.fromMap((map['dailySchedule']! as Map).cast<String, dynamic>())).input(),
      hourlySchedule: map['hourlySchedule'] == null ? null : (ResourcePolicyHourlyCycleComputeBeta.fromMap((map['hourlySchedule']! as Map).cast<String, dynamic>())).input(),
      weeklySchedule: map['weeklySchedule'] == null ? null : (ResourcePolicyWeeklyCycleComputeBeta.fromMap((map['weeklySchedule']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

