// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_snapshot_schedule_policy_schedule_daily_schedule.dart';
import 'resource_policy_snapshot_schedule_policy_schedule_hourly_schedule.dart';
import 'resource_policy_snapshot_schedule_policy_schedule_weekly_schedule.dart';

class ResourcePolicySnapshotSchedulePolicySchedule {
  /// The policy will execute every nth day at the specified time.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyScheduleDailySchedule>? dailySchedule;
  /// The policy will execute every nth hour starting at the specified time.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule>? hourlySchedule;
  /// Allows specifying a snapshot time for each day of the week.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule>? weeklySchedule;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicySchedule].
  /// [dailySchedule] The policy will execute every nth day at the specified time.
  /// [hourlySchedule] The policy will execute every nth hour starting at the specified time.
  /// [weeklySchedule] Allows specifying a snapshot time for each day of the week.
  ResourcePolicySnapshotSchedulePolicySchedule({
    this.dailySchedule,
    this.hourlySchedule,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicySnapshotSchedulePolicyScheduleDailySchedule, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'hourlySchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule, Map<String, dynamic>>(hourlySchedule, (value) => value.toMap()),
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicySchedule.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicySchedule(
      dailySchedule: map['dailySchedule'] == null ? null : (ResourcePolicySnapshotSchedulePolicyScheduleDailySchedule.fromMap((map['dailySchedule'] as Map).cast<String, dynamic>())).input(),
      hourlySchedule: map['hourlySchedule'] == null ? null : (ResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule.fromMap((map['hourlySchedule'] as Map).cast<String, dynamic>())).input(),
      weeklySchedule: map['weeklySchedule'] == null ? null : (ResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule.fromMap((map['weeklySchedule'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

