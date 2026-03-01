// ignore_for_file: unused_element, unnecessary_cast

import 'job_recurrence_schedule.dart';
import 'recurrence_frequency.dart';

class JobRecurrence {
  /// Gets or sets the maximum number of times that the job should run.
  final int? count;
  /// Gets or sets the time at which the job will complete.
  final String? endTime;
  /// Gets or sets the frequency of recurrence (second, minute, hour, day, week, month).
  final RecurrenceFrequency? frequency;
  /// Gets or sets the interval between retries.
  final int? interval;
  final JobRecurrenceSchedule? schedule;

  /// Creates a new [JobRecurrence].
  /// [count] Gets or sets the maximum number of times that the job should run.
  /// [endTime] Gets or sets the time at which the job will complete.
  /// [frequency] Gets or sets the frequency of recurrence (second, minute, hour, day, week, month).
  /// [interval] Gets or sets the interval between retries.
  /// [schedule] Optional.
  JobRecurrence({
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
      'frequency': ?frequency == null ? null : frequency!.value,
      'interval': ?interval,
      'schedule': ?schedule == null ? null : schedule!.toMap(),
    };
  }

  factory JobRecurrence.fromMap(Map<String, dynamic> map) {
    return JobRecurrence(
      count: map['count'] == null ? null : map['count'] as int,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      frequency: map['frequency'] == null ? null : RecurrenceFrequency.fromValue(map['frequency'] as String),
      interval: map['interval'] == null ? null : map['interval'] as int,
      schedule: map['schedule'] == null ? null : JobRecurrenceSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
    );
  }
}

