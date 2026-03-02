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
      'monthlyOccurrences': ?pulumi.Input.mapOptionalInputValue<List<JobRecurrenceScheduleMonthlyOccurrenceResponse>, List<Map<String, dynamic>>>(monthlyOccurrences, (value) => pulumi.Input.encodeList<JobRecurrenceScheduleMonthlyOccurrenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'weekDays': ?weekDays,
    };
  }

  factory JobRecurrenceScheduleResponse.fromMap(Map<String, dynamic> map) {
    return JobRecurrenceScheduleResponse(
      hours: map['hours'] == null ? null : ((map['hours']! as List).cast<int>()).input(),
      minutes: map['minutes'] == null ? null : ((map['minutes']! as List).cast<int>()).input(),
      monthDays: map['monthDays'] == null ? null : ((map['monthDays']! as List).cast<int>()).input(),
      monthlyOccurrences: map['monthlyOccurrences'] == null ? null : (pulumi.Input.decodeList<JobRecurrenceScheduleMonthlyOccurrenceResponse>(map['monthlyOccurrences']!, (value) => JobRecurrenceScheduleMonthlyOccurrenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      weekDays: map['weekDays'] == null ? null : ((map['weekDays']! as List).cast<String>()).input(),
    );
  }
}

