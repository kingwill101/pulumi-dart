// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_policy_snapshot_schedule_policy_schedule_weekly_schedule_day_of_week.dart';

class GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule {
  /// May contain up to seven (one for each day of the week) snapshot times.
  final pulumi.Input<List<GetResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek>> dayOfWeeks;

  /// Creates a new [GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule].
  /// [dayOfWeeks] May contain up to seven (one for each day of the week) snapshot times.
  const GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule({
    required this.dayOfWeeks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeeks': pulumi.Input.mapInputValue<List<GetResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek>, List<Map<String, dynamic>>>(dayOfWeeks, (value) => pulumi.Input.encodeList<GetResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule(
      dayOfWeeks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek>(map['dayOfWeeks']!, (value) => GetResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
