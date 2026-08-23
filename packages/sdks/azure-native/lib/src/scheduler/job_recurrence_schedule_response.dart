// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_recurrence_schedule_monthly_occurrence_response.dart';

class JobRecurrenceScheduleResponse {
  /// Gets or sets the hours of the day that the job should execute at.
  final pulumi.Input<List<int>>? hours;
  /// Gets or sets the minutes of the hour that the job should execute at.
  final pulumi.Input<List<int>>? minutes;
  /// Gets or sets the days of the month that the job should execute on. Must be between 1 and 31.
  final pulumi.Input<List<int>>? monthDays;
  /// Gets or sets the occurrences of days within a month.
  final pulumi.Input<List<JobRecurrenceScheduleMonthlyOccurrenceResponse>>? monthlyOccurrences;
  /// Gets or sets the days of the week that the job should execute on.
  final pulumi.Input<List<String>>? weekDays;

  /// Creates a new [JobRecurrenceScheduleResponse].
  /// [hours] Gets or sets the hours of the day that the job should execute at.
  /// [minutes] Gets or sets the minutes of the hour that the job should execute at.
  /// [monthDays] Gets or sets the days of the month that the job should execute on. Must be between 1 and 31.
  /// [monthlyOccurrences] Gets or sets the occurrences of days within a month.
  /// [weekDays] Gets or sets the days of the week that the job should execute on.
  const JobRecurrenceScheduleResponse({
    this.hours,
    this.minutes,
    this.monthDays,
    this.monthlyOccurrences,
    this.weekDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': ?hours,
      'minutes': ?minutes,
      'monthDays': ?monthDays,
      'monthlyOccurrences': ?pulumi.Input.mapOptionalInputValue<List<JobRecurrenceScheduleMonthlyOccurrenceResponse>, List<Map<String, dynamic>>>(monthlyOccurrences, (value) => pulumi.Input.encodeList<JobRecurrenceScheduleMonthlyOccurrenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'weekDays': ?weekDays,
    };
  }

  factory JobRecurrenceScheduleResponse.fromMap(Map<String, dynamic> map) {
    return JobRecurrenceScheduleResponse(
      hours: (() { final guardedValue = map['hours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      minutes: (() { final guardedValue = map['minutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      monthDays: (() { final guardedValue = map['monthDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      monthlyOccurrences: (() { final guardedValue = map['monthlyOccurrences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JobRecurrenceScheduleMonthlyOccurrenceResponse>(guardedValue, (value) => JobRecurrenceScheduleMonthlyOccurrenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      weekDays: (() { final guardedValue = map['weekDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
