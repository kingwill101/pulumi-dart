// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_day_of_week.dart';

/// Set assessment schedule for SQL Server.
class Schedule {
  /// Day of the week to run assessment.
  final pulumi.Input<AssessmentDayOfWeek>? dayOfWeek;
  /// Enable or disable assessment schedule on SQL virtual machine.
  final pulumi.Input<bool>? enable;
  /// Occurrence of the DayOfWeek day within a month to schedule assessment. Takes values: 1,2,3,4 and -1. Use -1 for last DayOfWeek day of the month
  final pulumi.Input<int>? monthlyOccurrence;
  /// Time of the day in HH:mm format. Eg. 17:30
  final pulumi.Input<String>? startTime;
  /// Number of weeks to schedule between 2 assessment runs. Takes value from 1-6
  final pulumi.Input<int>? weeklyInterval;

  /// Creates a new [Schedule].
  /// [dayOfWeek] Day of the week to run assessment.
  /// [enable] Enable or disable assessment schedule on SQL virtual machine.
  /// [monthlyOccurrence] Occurrence of the DayOfWeek day within a month to schedule assessment. Takes values: 1,2,3,4 and -1. Use -1 for last DayOfWeek day of the month
  /// [startTime] Time of the day in HH:mm format. Eg. 17:30
  /// [weeklyInterval] Number of weeks to schedule between 2 assessment runs. Takes value from 1-6
  Schedule({
    this.dayOfWeek,
    this.enable,
    this.monthlyOccurrence,
    this.startTime,
    this.weeklyInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?pulumi.Input.mapOptionalInputValue<AssessmentDayOfWeek, String>(dayOfWeek, (value) => value.value),
      'enable': ?enable,
      'monthlyOccurrence': ?monthlyOccurrence,
      'startTime': ?startTime,
      'weeklyInterval': ?weeklyInterval,
    };
  }

  factory Schedule.fromMap(Map<String, dynamic> map) {
    return Schedule(
      dayOfWeek: map['dayOfWeek'] == null ? null : (AssessmentDayOfWeek.fromValue(map['dayOfWeek']! as String)).input(),
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      monthlyOccurrence: map['monthlyOccurrence'] == null ? null : (map['monthlyOccurrence']! as int).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      weeklyInterval: map['weeklyInterval'] == null ? null : (map['weeklyInterval']! as int).input(),
    );
  }
}

