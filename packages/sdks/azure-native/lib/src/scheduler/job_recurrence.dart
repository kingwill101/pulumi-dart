// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_recurrence_schedule.dart';
import 'recurrence_frequency.dart';

class JobRecurrence {
  /// Gets or sets the maximum number of times that the job should run.
  final pulumi.Input<int>? count;
  /// Gets or sets the time at which the job will complete.
  final pulumi.Input<String>? endTime;
  /// Gets or sets the frequency of recurrence (second, minute, hour, day, week, month).
  final pulumi.Input<RecurrenceFrequency>? frequency;
  /// Gets or sets the interval between retries.
  final pulumi.Input<int>? interval;
  final pulumi.Input<JobRecurrenceSchedule>? schedule;

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
      'frequency': ?pulumi.Input.mapOptionalInputValue<RecurrenceFrequency, String>(frequency, (value) => value.value),
      'interval': ?interval,
      'schedule': ?pulumi.Input.mapOptionalInputValue<JobRecurrenceSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory JobRecurrence.fromMap(Map<String, dynamic> map) {
    return JobRecurrence(
      count: map['count'] == null ? null : (map['count'] as int).input(),
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      frequency: map['frequency'] == null ? null : (RecurrenceFrequency.fromValue(map['frequency'] as String)).input(),
      interval: map['interval'] == null ? null : (map['interval'] as int).input(),
      schedule: map['schedule'] == null ? null : (JobRecurrenceSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

