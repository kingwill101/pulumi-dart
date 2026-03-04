// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set assessment schedule for SQL Server.
class ScheduleResponse {
  /// Day of the week to run assessment.
  final pulumi.Input<String>? dayOfWeek;

  /// Enable or disable assessment schedule on SQL virtual machine.
  final pulumi.Input<bool>? enable;

  /// Occurrence of the DayOfWeek day within a month to schedule assessment. Takes values: 1,2,3,4 and -1. Use -1 for last DayOfWeek day of the month
  final pulumi.Input<int>? monthlyOccurrence;

  /// Time of the day in HH:mm format. Eg. 17:30
  final pulumi.Input<String>? startTime;

  /// Number of weeks to schedule between 2 assessment runs. Takes value from 1-6
  final pulumi.Input<int>? weeklyInterval;

  /// Creates a new [ScheduleResponse].
  /// [dayOfWeek] Day of the week to run assessment.
  /// [enable] Enable or disable assessment schedule on SQL virtual machine.
  /// [monthlyOccurrence] Occurrence of the DayOfWeek day within a month to schedule assessment. Takes values: 1,2,3,4 and -1. Use -1 for last DayOfWeek day of the month
  /// [startTime] Time of the day in HH:mm format. Eg. 17:30
  /// [weeklyInterval] Number of weeks to schedule between 2 assessment runs. Takes value from 1-6
  ScheduleResponse({
    this.dayOfWeek,
    this.enable,
    this.monthlyOccurrence,
    this.startTime,
    this.weeklyInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?dayOfWeek,
      'enable': ?enable,
      'monthlyOccurrence': ?monthlyOccurrence,
      'startTime': ?startTime,
      'weeklyInterval': ?weeklyInterval,
    };
  }

  factory ScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleResponse(
      dayOfWeek: (() {
        final guardedValue = map['dayOfWeek'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      monthlyOccurrence: (() {
        final guardedValue = map['monthlyOccurrence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      weeklyInterval: (() {
        final guardedValue = map['weeklyInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
