// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monthly_schedule_response.dart';
import 'time_of_day_response.dart';
import 'time_zone_response.dart';
import 'weekly_schedule_response.dart';

/// Sets the time for recurring patch deployments.
class RecurringScheduleResponse {
  /// Optional. The end time at which a recurring patch deployment schedule is no longer active.
  final pulumi.Input<String> endTime;
  /// The frequency unit of this recurring schedule.
  final pulumi.Input<String> frequency;
  /// The time the last patch job ran successfully.
  final pulumi.Input<String> lastExecuteTime;
  /// Schedule with monthly executions.
  final pulumi.Input<MonthlyScheduleResponse> monthly;
  /// The time the next patch job is scheduled to run.
  final pulumi.Input<String> nextExecuteTime;
  /// Optional. The time that the recurring schedule becomes effective. Defaults to `create_time` of the patch deployment.
  final pulumi.Input<String> startTime;
  /// Time of the day to run a recurring deployment.
  final pulumi.Input<TimeOfDayResponse> timeOfDay;
  /// Defines the time zone that `time_of_day` is relative to. The rules for daylight saving time are determined by the chosen time zone.
  final pulumi.Input<TimeZoneResponse> timeZone;
  /// Schedule with weekly executions.
  final pulumi.Input<WeeklyScheduleResponse> weekly;

  /// Creates a new [RecurringScheduleResponse].
  /// [endTime] Optional. The end time at which a recurring patch deployment schedule is no longer active.
  /// [frequency] The frequency unit of this recurring schedule.
  /// [lastExecuteTime] The time the last patch job ran successfully.
  /// [monthly] Schedule with monthly executions.
  /// [nextExecuteTime] The time the next patch job is scheduled to run.
  /// [startTime] Optional. The time that the recurring schedule becomes effective. Defaults to `create_time` of the patch deployment.
  /// [timeOfDay] Time of the day to run a recurring deployment.
  /// [timeZone] Defines the time zone that `time_of_day` is relative to. The rules for daylight saving time are determined by the chosen time zone.
  /// [weekly] Schedule with weekly executions.
  RecurringScheduleResponse({
    required this.endTime,
    required this.frequency,
    required this.lastExecuteTime,
    required this.monthly,
    required this.nextExecuteTime,
    required this.startTime,
    required this.timeOfDay,
    required this.timeZone,
    required this.weekly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'frequency': frequency,
      'lastExecuteTime': lastExecuteTime,
      'monthly': pulumi.Input.mapInputValue<MonthlyScheduleResponse, Map<String, dynamic>>(monthly, (value) => value.toMap()),
      'nextExecuteTime': nextExecuteTime,
      'startTime': startTime,
      'timeOfDay': pulumi.Input.mapInputValue<TimeOfDayResponse, Map<String, dynamic>>(timeOfDay, (value) => value.toMap()),
      'timeZone': pulumi.Input.mapInputValue<TimeZoneResponse, Map<String, dynamic>>(timeZone, (value) => value.toMap()),
      'weekly': pulumi.Input.mapInputValue<WeeklyScheduleResponse, Map<String, dynamic>>(weekly, (value) => value.toMap()),
    };
  }

  factory RecurringScheduleResponse.fromMap(Map<String, dynamic> map) {
    return RecurringScheduleResponse(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      lastExecuteTime: pulumi.Input.fromValue(map['lastExecuteTime'] as String),
      monthly: pulumi.Input.fromValue(MonthlyScheduleResponse.fromMap((map['monthly']! as Map).cast<String, dynamic>())),
      nextExecuteTime: pulumi.Input.fromValue(map['nextExecuteTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      timeOfDay: pulumi.Input.fromValue(TimeOfDayResponse.fromMap((map['timeOfDay']! as Map).cast<String, dynamic>())),
      timeZone: pulumi.Input.fromValue(TimeZoneResponse.fromMap((map['timeZone']! as Map).cast<String, dynamic>())),
      weekly: pulumi.Input.fromValue(WeeklyScheduleResponse.fromMap((map['weekly']! as Map).cast<String, dynamic>())),
    );
  }
}

