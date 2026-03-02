// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_policy_snapshot_schedule_policy_schedule_daily_schedule.dart';
import 'get_resource_policy_snapshot_schedule_policy_schedule_hourly_schedule.dart';
import 'get_resource_policy_snapshot_schedule_policy_schedule_weekly_schedule.dart';

class GetResourcePolicySnapshotSchedulePolicySchedule {
  /// The policy will execute every nth day at the specified time.
  final pulumi.Input<List<GetResourcePolicySnapshotSchedulePolicyScheduleDailySchedule>> dailySchedules;
  /// The policy will execute every nth hour starting at the specified time.
  final pulumi.Input<List<GetResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule>> hourlySchedules;
  /// Allows specifying a snapshot time for each day of the week.
  final pulumi.Input<List<GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule>> weeklySchedules;

  /// Creates a new [GetResourcePolicySnapshotSchedulePolicySchedule].
  /// [dailySchedules] The policy will execute every nth day at the specified time.
  /// [hourlySchedules] The policy will execute every nth hour starting at the specified time.
  /// [weeklySchedules] Allows specifying a snapshot time for each day of the week.
  GetResourcePolicySnapshotSchedulePolicySchedule({
    required this.dailySchedules,
    required this.hourlySchedules,
    required this.weeklySchedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedules': pulumi.Input.mapInputValue<List<GetResourcePolicySnapshotSchedulePolicyScheduleDailySchedule>, List<Map<String, dynamic>>>(dailySchedules, (value) => pulumi.Input.encodeList<GetResourcePolicySnapshotSchedulePolicyScheduleDailySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hourlySchedules': pulumi.Input.mapInputValue<List<GetResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule>, List<Map<String, dynamic>>>(hourlySchedules, (value) => pulumi.Input.encodeList<GetResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'weeklySchedules': pulumi.Input.mapInputValue<List<GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule>, List<Map<String, dynamic>>>(weeklySchedules, (value) => pulumi.Input.encodeList<GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetResourcePolicySnapshotSchedulePolicySchedule.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicySnapshotSchedulePolicySchedule(
      dailySchedules: (pulumi.Input.decodeList<GetResourcePolicySnapshotSchedulePolicyScheduleDailySchedule>(map['dailySchedules'], (value) => GetResourcePolicySnapshotSchedulePolicyScheduleDailySchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hourlySchedules: (pulumi.Input.decodeList<GetResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule>(map['hourlySchedules'], (value) => GetResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      weeklySchedules: (pulumi.Input.decodeList<GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule>(map['weeklySchedules'], (value) => GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

