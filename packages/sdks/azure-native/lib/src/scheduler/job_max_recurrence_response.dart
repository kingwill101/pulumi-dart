// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobMaxRecurrenceResponse {
  /// Gets or sets the frequency of recurrence (second, minute, hour, day, week, month).
  final pulumi.Input<String>? frequency;
  /// Gets or sets the interval between retries.
  final pulumi.Input<int>? interval;

  /// Creates a new [JobMaxRecurrenceResponse].
  /// [frequency] Gets or sets the frequency of recurrence (second, minute, hour, day, week, month).
  /// [interval] Gets or sets the interval between retries.
  const JobMaxRecurrenceResponse({
    this.frequency,
    this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'interval': ?interval,
    };
  }

  factory JobMaxRecurrenceResponse.fromMap(Map<String, dynamic> map) {
    return JobMaxRecurrenceResponse(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
