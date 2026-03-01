// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_recurrence_schedule_monthly_occurrence_response.dart';

class JobRecurrenceScheduleResponse {
  /// Gets or sets the hours of the day that the job should execute at.
  final List<int>? hours;
  /// Gets or sets the minutes of the hour that the job should execute at.
  final List<int>? minutes;
  /// Gets or sets the days of the month that the job should execute on. Must be between 1 and 31.
  final List<int>? monthDays;
  /// Gets or sets the occurrences of days within a month.
  final List<JobRecurrenceScheduleMonthlyOccurrenceResponse>? monthlyOccurrences;
  /// Gets or sets the days of the week that the job should execute on.
  final List<String>? weekDays;

  /// Creates a new [JobRecurrenceScheduleResponse].
  /// [hours] Gets or sets the hours of the day that the job should execute at.
  /// [minutes] Gets or sets the minutes of the hour that the job should execute at.
  /// [monthDays] Gets or sets the days of the month that the job should execute on. Must be between 1 and 31.
  /// [monthlyOccurrences] Gets or sets the occurrences of days within a month.
  /// [weekDays] Gets or sets the days of the week that the job should execute on.
  JobRecurrenceScheduleResponse({
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
      'monthlyOccurrences': ?monthlyOccurrences == null ? null : pulumi.Input.encodeList<JobRecurrenceScheduleMonthlyOccurrenceResponse, Map<String, dynamic>>(monthlyOccurrences!, (value) => value.toMap()),
      'weekDays': ?weekDays,
    };
  }

  factory JobRecurrenceScheduleResponse.fromMap(Map<String, dynamic> map) {
    return JobRecurrenceScheduleResponse(
      hours: map['hours'] == null ? null : (map['hours'] as List).cast<int>(),
      minutes: map['minutes'] == null ? null : (map['minutes'] as List).cast<int>(),
      monthDays: map['monthDays'] == null ? null : (map['monthDays'] as List).cast<int>(),
      monthlyOccurrences: map['monthlyOccurrences'] == null ? null : pulumi.Input.decodeList<JobRecurrenceScheduleMonthlyOccurrenceResponse>(map['monthlyOccurrences'], (value) => JobRecurrenceScheduleMonthlyOccurrenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      weekDays: map['weekDays'] == null ? null : (map['weekDays'] as List).cast<String>(),
    );
  }
}

