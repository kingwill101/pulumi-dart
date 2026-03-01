// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_daily_cycle.dart';
import 'resource_policy_hourly_cycle.dart';
import 'resource_policy_weekly_cycle.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicySchedule {
  final ResourcePolicyDailyCycle? dailySchedule;
  final ResourcePolicyHourlyCycle? hourlySchedule;
  final ResourcePolicyWeeklyCycle? weeklySchedule;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicySchedule].
  /// [dailySchedule] Optional.
  /// [hourlySchedule] Optional.
  /// [weeklySchedule] Optional.
  ResourcePolicySnapshotSchedulePolicySchedule({
    this.dailySchedule,
    this.hourlySchedule,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?dailySchedule == null ? null : dailySchedule!.toMap(),
      'hourlySchedule': ?hourlySchedule == null ? null : hourlySchedule!.toMap(),
      'weeklySchedule': ?weeklySchedule == null ? null : weeklySchedule!.toMap(),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicySchedule.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicySchedule(
      dailySchedule: map['dailySchedule'] == null ? null : ResourcePolicyDailyCycle.fromMap((map['dailySchedule'] as Map).cast<String, dynamic>()),
      hourlySchedule: map['hourlySchedule'] == null ? null : ResourcePolicyHourlyCycle.fromMap((map['hourlySchedule'] as Map).cast<String, dynamic>()),
      weeklySchedule: map['weeklySchedule'] == null ? null : ResourcePolicyWeeklyCycle.fromMap((map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}

