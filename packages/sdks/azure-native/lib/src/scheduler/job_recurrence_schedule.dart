// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_of_week.dart';
import 'job_recurrence_schedule_monthly_occurrence.dart';

class JobRecurrenceSchedule {
  /// Gets or sets the hours of the day that the job should execute at.
  final List<int>? hours;
  /// Gets or sets the minutes of the hour that the job should execute at.
  final List<int>? minutes;
  /// Gets or sets the days of the month that the job should execute on. Must be between 1 and 31.
  final List<int>? monthDays;
  /// Gets or sets the occurrences of days within a month.
  final List<JobRecurrenceScheduleMonthlyOccurrence>? monthlyOccurrences;
  /// Gets or sets the days of the week that the job should execute on.
  final List<DayOfWeek>? weekDays;

  /// Creates a new [JobRecurrenceSchedule].
  /// [hours] Gets or sets the hours of the day that the job should execute at.
  /// [minutes] Gets or sets the minutes of the hour that the job should execute at.
  /// [monthDays] Gets or sets the days of the month that the job should execute on. Must be between 1 and 31.
  /// [monthlyOccurrences] Gets or sets the occurrences of days within a month.
  /// [weekDays] Gets or sets the days of the week that the job should execute on.
  JobRecurrenceSchedule({
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
      'monthlyOccurrences': ?monthlyOccurrences == null ? null : pulumi.Input.encodeList<JobRecurrenceScheduleMonthlyOccurrence, Map<String, dynamic>>(monthlyOccurrences!, (value) => value.toMap()),
      'weekDays': ?weekDays == null ? null : pulumi.Input.encodeList<DayOfWeek, String>(weekDays!, (value) => value.value),
    };
  }

  factory JobRecurrenceSchedule.fromMap(Map<String, dynamic> map) {
    return JobRecurrenceSchedule(
      hours: map['hours'] == null ? null : (map['hours'] as List).cast<int>(),
      minutes: map['minutes'] == null ? null : (map['minutes'] as List).cast<int>(),
      monthDays: map['monthDays'] == null ? null : (map['monthDays'] as List).cast<int>(),
      monthlyOccurrences: map['monthlyOccurrences'] == null ? null : pulumi.Input.decodeList<JobRecurrenceScheduleMonthlyOccurrence>(map['monthlyOccurrences'], (value) => JobRecurrenceScheduleMonthlyOccurrence.fromMap((value as Map).cast<String, dynamic>())),
      weekDays: map['weekDays'] == null ? null : pulumi.Input.decodeList<DayOfWeek>(map['weekDays'], (value) => DayOfWeek.fromValue(value as String)),
    );
  }
}

