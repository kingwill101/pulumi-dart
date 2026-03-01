// ignore_for_file: unused_element, unnecessary_cast

import 'job_recurrence_schedule_response.dart';

class JobRecurrenceResponse {
  /// Gets or sets the maximum number of times that the job should run.
  final int? count;
  /// Gets or sets the time at which the job will complete.
  final String? endTime;
  /// Gets or sets the frequency of recurrence (second, minute, hour, day, week, month).
  final String? frequency;
  /// Gets or sets the interval between retries.
  final int? interval;
  final JobRecurrenceScheduleResponse? schedule;

  /// Creates a new [JobRecurrenceResponse].
  /// [count] Gets or sets the maximum number of times that the job should run.
  /// [endTime] Gets or sets the time at which the job will complete.
  /// [frequency] Gets or sets the frequency of recurrence (second, minute, hour, day, week, month).
  /// [interval] Gets or sets the interval between retries.
  /// [schedule] Optional.
  JobRecurrenceResponse({
    this.count,
    this.endTime,
    this.frequency,
    this.interval,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'endTime': ?endTime,
      'frequency': ?frequency,
      'interval': ?interval,
      'schedule': ?schedule == null ? null : schedule!.toMap(),
    };
  }

  factory JobRecurrenceResponse.fromMap(Map<String, dynamic> map) {
    return JobRecurrenceResponse(
      count: map['count'] == null ? null : map['count'] as int,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      frequency: map['frequency'] == null ? null : map['frequency'] as String,
      interval: map['interval'] == null ? null : map['interval'] as int,
      schedule: map['schedule'] == null ? null : JobRecurrenceScheduleResponse.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
    );
  }
}

