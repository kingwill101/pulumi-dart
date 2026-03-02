// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recurrence_frequency.dart';

class JobMaxRecurrence {
  /// Gets or sets the frequency of recurrence (second, minute, hour, day, week, month).
  final pulumi.Input<RecurrenceFrequency>? frequency;
  /// Gets or sets the interval between retries.
  final pulumi.Input<int>? interval;

  /// Creates a new [JobMaxRecurrence].
  /// [frequency] Gets or sets the frequency of recurrence (second, minute, hour, day, week, month).
  /// [interval] Gets or sets the interval between retries.
  JobMaxRecurrence({
    this.frequency,
    this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?pulumi.Input.mapOptionalInputValue<RecurrenceFrequency, String>(frequency, (value) => value.value),
      'interval': ?interval,
    };
  }

  factory JobMaxRecurrence.fromMap(Map<String, dynamic> map) {
    return JobMaxRecurrence(
      frequency: map['frequency'] == null ? null : (RecurrenceFrequency.fromValue(map['frequency'] as String)).input(),
      interval: map['interval'] == null ? null : (map['interval'] as int).input(),
    );
  }
}

