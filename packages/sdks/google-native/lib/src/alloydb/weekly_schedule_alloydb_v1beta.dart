// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_time_of_day_alloydb_v1beta.dart';
import 'weekly_schedule_days_of_week_item_alloydb_v1beta.dart';

/// A weekly schedule starts a backup at prescribed start times within a day, for the specified days of the week. The weekly schedule message is flexible and can be used to create many types of schedules. For example, to have a daily backup that starts at 22:00, configure the `start_times` field to have one element "22:00" and the `days_of_week` field to have all seven days of the week.
class WeeklyScheduleAlloydbV1beta {
  /// The days of the week to perform a backup. If this field is left empty, the default of every day of the week is used.
  final pulumi.Input<List<WeeklyScheduleDaysOfWeekItemAlloydbV1beta>>? daysOfWeek;
  /// The times during the day to start a backup. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00). If no start times are provided, a single fixed start time is chosen arbitrarily.
  final pulumi.Input<List<GoogleTypeTimeOfDayAlloydbV1beta>>? startTimes;

  /// Creates a new [WeeklyScheduleAlloydbV1beta].
  /// [daysOfWeek] The days of the week to perform a backup. If this field is left empty, the default of every day of the week is used.
  /// [startTimes] The times during the day to start a backup. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00). If no start times are provided, a single fixed start time is chosen arbitrarily.
  WeeklyScheduleAlloydbV1beta({
    this.daysOfWeek,
    this.startTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeek': ?pulumi.Input.mapOptionalInputValue<List<WeeklyScheduleDaysOfWeekItemAlloydbV1beta>, List<String>>(daysOfWeek, (value) => pulumi.Input.encodeList<WeeklyScheduleDaysOfWeekItemAlloydbV1beta, String>(value, (value) => value.value)),
      'startTimes': ?pulumi.Input.mapOptionalInputValue<List<GoogleTypeTimeOfDayAlloydbV1beta>, List<Map<String, dynamic>>>(startTimes, (value) => pulumi.Input.encodeList<GoogleTypeTimeOfDayAlloydbV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WeeklyScheduleAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return WeeklyScheduleAlloydbV1beta(
      daysOfWeek: map['daysOfWeek'] == null ? null : (pulumi.Input.decodeList<WeeklyScheduleDaysOfWeekItemAlloydbV1beta>(map['daysOfWeek']!, (value) => WeeklyScheduleDaysOfWeekItemAlloydbV1beta.fromValue(value as String))).input(),
      startTimes: map['startTimes'] == null ? null : (pulumi.Input.decodeList<GoogleTypeTimeOfDayAlloydbV1beta>(map['startTimes']!, (value) => GoogleTypeTimeOfDayAlloydbV1beta.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

