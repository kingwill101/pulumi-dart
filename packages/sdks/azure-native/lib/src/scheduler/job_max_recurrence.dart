// ignore_for_file: unused_element, unnecessary_cast

import 'recurrence_frequency.dart';

class JobMaxRecurrence {
  /// Gets or sets the frequency of recurrence (second, minute, hour, day, week, month).
  final RecurrenceFrequency? frequency;
  /// Gets or sets the interval between retries.
  final int? interval;

  /// Creates a new [JobMaxRecurrence].
  /// [frequency] Gets or sets the frequency of recurrence (second, minute, hour, day, week, month).
  /// [interval] Gets or sets the interval between retries.
  JobMaxRecurrence({
    this.frequency,
    this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency == null ? null : frequency!.value,
      'interval': ?interval,
    };
  }

  factory JobMaxRecurrence.fromMap(Map<String, dynamic> map) {
    return JobMaxRecurrence(
      frequency: map['frequency'] == null ? null : RecurrenceFrequency.fromValue(map['frequency'] as String),
      interval: map['interval'] == null ? null : map['interval'] as int,
    );
  }
}

