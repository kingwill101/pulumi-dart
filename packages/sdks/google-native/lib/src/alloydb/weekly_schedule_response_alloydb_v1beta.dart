// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_time_of_day_response_alloydb_v1beta.dart';

/// A weekly schedule starts a backup at prescribed start times within a day, for the specified days of the week. The weekly schedule message is flexible and can be used to create many types of schedules. For example, to have a daily backup that starts at 22:00, configure the `start_times` field to have one element "22:00" and the `days_of_week` field to have all seven days of the week.
class WeeklyScheduleResponseAlloydbV1beta {
  /// The days of the week to perform a backup. If this field is left empty, the default of every day of the week is used.
  final pulumi.Input<List<String>> daysOfWeek;
  /// The times during the day to start a backup. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00). If no start times are provided, a single fixed start time is chosen arbitrarily.
  final pulumi.Input<List<GoogleTypeTimeOfDayResponseAlloydbV1beta>> startTimes;

  /// Creates a new [WeeklyScheduleResponseAlloydbV1beta].
  /// [daysOfWeek] The days of the week to perform a backup. If this field is left empty, the default of every day of the week is used.
  /// [startTimes] The times during the day to start a backup. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00). If no start times are provided, a single fixed start time is chosen arbitrarily.
  WeeklyScheduleResponseAlloydbV1beta({
    required this.daysOfWeek,
    required this.startTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeek': daysOfWeek,
      'startTimes': pulumi.Input.mapInputValue<List<GoogleTypeTimeOfDayResponseAlloydbV1beta>, List<Map<String, dynamic>>>(startTimes, (value) => pulumi.Input.encodeList<GoogleTypeTimeOfDayResponseAlloydbV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WeeklyScheduleResponseAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return WeeklyScheduleResponseAlloydbV1beta(
      daysOfWeek: pulumi.Input.fromValue((map['daysOfWeek'] as List).cast<String>()),
      startTimes: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleTypeTimeOfDayResponseAlloydbV1beta>(map['startTimes']!, (value) => GoogleTypeTimeOfDayResponseAlloydbV1beta.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

