// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monthly_schedule_osconfig_v1beta.dart';
import 'recurring_schedule_frequency_osconfig_v1beta.dart';
import 'time_of_day_osconfig_v1beta.dart';
import 'time_zone_osconfig_v1beta.dart';
import 'weekly_schedule_osconfig_v1beta.dart';

/// Sets the time for recurring patch deployments.
class RecurringScheduleOsconfigV1beta {
  /// Optional. The end time at which a recurring patch deployment schedule is no longer active.
  final pulumi.Input<String>? endTime;
  /// The frequency unit of this recurring schedule.
  final pulumi.Input<RecurringScheduleFrequencyOsconfigV1beta> frequency;
  /// Schedule with monthly executions.
  final pulumi.Input<MonthlyScheduleOsconfigV1beta> monthly;
  /// Optional. The time that the recurring schedule becomes effective. Defaults to `create_time` of the patch deployment.
  final pulumi.Input<String>? startTime;
  /// Time of the day to run a recurring deployment.
  final pulumi.Input<TimeOfDayOsconfigV1beta> timeOfDay;
  /// Defines the time zone that `time_of_day` is relative to. The rules for daylight saving time are determined by the chosen time zone.
  final pulumi.Input<TimeZoneOsconfigV1beta> timeZone;
  /// Schedule with weekly executions.
  final pulumi.Input<WeeklyScheduleOsconfigV1beta> weekly;

  /// Creates a new [RecurringScheduleOsconfigV1beta].
  /// [endTime] Optional. The end time at which a recurring patch deployment schedule is no longer active.
  /// [frequency] The frequency unit of this recurring schedule.
  /// [monthly] Schedule with monthly executions.
  /// [startTime] Optional. The time that the recurring schedule becomes effective. Defaults to `create_time` of the patch deployment.
  /// [timeOfDay] Time of the day to run a recurring deployment.
  /// [timeZone] Defines the time zone that `time_of_day` is relative to. The rules for daylight saving time are determined by the chosen time zone.
  /// [weekly] Schedule with weekly executions.
  RecurringScheduleOsconfigV1beta({
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
      'frequency': pulumi.Input.mapInputValue<RecurringScheduleFrequencyOsconfigV1beta, String>(frequency, (value) => value.value),
      'monthly': pulumi.Input.mapInputValue<MonthlyScheduleOsconfigV1beta, Map<String, dynamic>>(monthly, (value) => value.toMap()),
      'startTime': ?startTime,
      'timeOfDay': pulumi.Input.mapInputValue<TimeOfDayOsconfigV1beta, Map<String, dynamic>>(timeOfDay, (value) => value.toMap()),
      'timeZone': pulumi.Input.mapInputValue<TimeZoneOsconfigV1beta, Map<String, dynamic>>(timeZone, (value) => value.toMap()),
      'weekly': pulumi.Input.mapInputValue<WeeklyScheduleOsconfigV1beta, Map<String, dynamic>>(weekly, (value) => value.toMap()),
    };
  }

  factory RecurringScheduleOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return RecurringScheduleOsconfigV1beta(
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      frequency: (RecurringScheduleFrequencyOsconfigV1beta.fromValue(map['frequency'] as String)).input(),
      monthly: (MonthlyScheduleOsconfigV1beta.fromMap((map['monthly'] as Map).cast<String, dynamic>())).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      timeOfDay: (TimeOfDayOsconfigV1beta.fromMap((map['timeOfDay'] as Map).cast<String, dynamic>())).input(),
      timeZone: (TimeZoneOsconfigV1beta.fromMap((map['timeZone'] as Map).cast<String, dynamic>())).input(),
      weekly: (WeeklyScheduleOsconfigV1beta.fromMap((map['weekly'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

