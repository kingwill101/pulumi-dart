// ignore_for_file: unused_element, unnecessary_cast

import 'monthly_schedule.dart';
import 'recurring_schedule_frequency.dart';
import 'time_of_day.dart';
import 'time_zone.dart';
import 'weekly_schedule.dart';

/// Sets the time for recurring patch deployments.
class RecurringSchedule {
  /// Optional. The end time at which a recurring patch deployment schedule is no longer active.
  final String? endTime;
  /// The frequency unit of this recurring schedule.
  final RecurringScheduleFrequency frequency;
  /// Schedule with monthly executions.
  final MonthlySchedule monthly;
  /// Optional. The time that the recurring schedule becomes effective. Defaults to `create_time` of the patch deployment.
  final String? startTime;
  /// Time of the day to run a recurring deployment.
  final TimeOfDay timeOfDay;
  /// Defines the time zone that `time_of_day` is relative to. The rules for daylight saving time are determined by the chosen time zone.
  final TimeZone timeZone;
  /// Schedule with weekly executions.
  final WeeklySchedule weekly;

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
      'frequency': frequency.value,
      'monthly': monthly.toMap(),
      'startTime': ?startTime,
      'timeOfDay': timeOfDay.toMap(),
      'timeZone': timeZone.toMap(),
      'weekly': weekly.toMap(),
    };
  }

  factory RecurringSchedule.fromMap(Map<String, dynamic> map) {
    return RecurringSchedule(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      frequency: RecurringScheduleFrequency.fromValue(map['frequency'] as String),
      monthly: MonthlySchedule.fromMap((map['monthly'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeOfDay: TimeOfDay.fromMap((map['timeOfDay'] as Map).cast<String, dynamic>()),
      timeZone: TimeZone.fromMap((map['timeZone'] as Map).cast<String, dynamic>()),
      weekly: WeeklySchedule.fromMap((map['weekly'] as Map).cast<String, dynamic>()),
    );
  }
}

