// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monthly_schedule.dart';
import 'recurring_schedule_frequency.dart';
import 'time_of_day.dart';
import 'time_zone.dart';
import 'weekly_schedule.dart';

/// Sets the time for recurring patch deployments.
class RecurringSchedule {
  /// Optional. The end time at which a recurring patch deployment schedule is no longer active.
  final pulumi.Input<String>? endTime;
  /// The frequency unit of this recurring schedule.
  final pulumi.Input<RecurringScheduleFrequency> frequency;
  /// Schedule with monthly executions.
  final pulumi.Input<MonthlySchedule> monthly;
  /// Optional. The time that the recurring schedule becomes effective. Defaults to `create_time` of the patch deployment.
  final pulumi.Input<String>? startTime;
  /// Time of the day to run a recurring deployment.
  final pulumi.Input<TimeOfDay> timeOfDay;
  /// Defines the time zone that `time_of_day` is relative to. The rules for daylight saving time are determined by the chosen time zone.
  final pulumi.Input<TimeZone> timeZone;
  /// Schedule with weekly executions.
  final pulumi.Input<WeeklySchedule> weekly;

  /// Creates a new [RecurringSchedule].
  /// [endTime] Optional. The end time at which a recurring patch deployment schedule is no longer active.
  /// [frequency] The frequency unit of this recurring schedule.
  /// [monthly] Schedule with monthly executions.
  /// [startTime] Optional. The time that the recurring schedule becomes effective. Defaults to `create_time` of the patch deployment.
  /// [timeOfDay] Time of the day to run a recurring deployment.
  /// [timeZone] Defines the time zone that `time_of_day` is relative to. The rules for daylight saving time are determined by the chosen time zone.
  /// [weekly] Schedule with weekly executions.
  RecurringSchedule({
    this.endTime,
    required this.frequency,
    required this.monthly,
    this.startTime,
    required this.timeOfDay,
    required this.timeZone,
    required this.weekly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'frequency': pulumi.Input.mapInputValue<RecurringScheduleFrequency, String>(frequency, (value) => value.value),
      'monthly': pulumi.Input.mapInputValue<MonthlySchedule, Map<String, dynamic>>(monthly, (value) => value.toMap()),
      'startTime': ?startTime,
      'timeOfDay': pulumi.Input.mapInputValue<TimeOfDay, Map<String, dynamic>>(timeOfDay, (value) => value.toMap()),
      'timeZone': pulumi.Input.mapInputValue<TimeZone, Map<String, dynamic>>(timeZone, (value) => value.toMap()),
      'weekly': pulumi.Input.mapInputValue<WeeklySchedule, Map<String, dynamic>>(weekly, (value) => value.toMap()),
    };
  }

  factory RecurringSchedule.fromMap(Map<String, dynamic> map) {
    return RecurringSchedule(
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      frequency: (RecurringScheduleFrequency.fromValue(map['frequency'] as String)).input(),
      monthly: (MonthlySchedule.fromMap((map['monthly'] as Map).cast<String, dynamic>())).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
      timeOfDay: (TimeOfDay.fromMap((map['timeOfDay'] as Map).cast<String, dynamic>())).input(),
      timeZone: (TimeZone.fromMap((map['timeZone'] as Map).cast<String, dynamic>())).input(),
      weekly: (WeeklySchedule.fromMap((map['weekly'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

