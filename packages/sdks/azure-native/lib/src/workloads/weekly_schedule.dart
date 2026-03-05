// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_of_week.dart';

/// Weekly schedule.
class WeeklySchedule {
  /// Schedule run days.
  final pulumi.Input<List<DayOfWeek>>? scheduleRunDays;
  /// List of times of day this schedule has to be run.
  final pulumi.Input<List<String>>? scheduleRunTimes;

  /// Creates a new [WeeklySchedule].
  /// [scheduleRunDays] Schedule run days.
  /// [scheduleRunTimes] List of times of day this schedule has to be run.
  WeeklySchedule({
    this.scheduleRunDays,
    this.scheduleRunTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleRunDays': ?pulumi.Input.mapOptionalInputValue<List<DayOfWeek>, List<String>>(scheduleRunDays, (value) => pulumi.Input.encodeList<DayOfWeek, String>(value, (value) => value.wireValue)),
      'scheduleRunTimes': ?scheduleRunTimes,
    };
  }

  factory WeeklySchedule.fromMap(Map<String, dynamic> map) {
    return WeeklySchedule(
      scheduleRunDays: (() { final guardedValue = map['scheduleRunDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DayOfWeek>(guardedValue, (value) => DayOfWeek.fromValue(value as String))); })(),
      scheduleRunTimes: (() { final guardedValue = map['scheduleRunTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

