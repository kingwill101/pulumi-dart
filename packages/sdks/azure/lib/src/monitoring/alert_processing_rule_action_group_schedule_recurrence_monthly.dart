// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertProcessingRuleActionGroupScheduleRecurrenceMonthly {
  /// Specifies a list of dayOfMonth to recurrence. Possible values are integers between `1` - `31`.
  final pulumi.Input<List<int>> daysOfMonths;
  /// Specifies the recurrence end time (H:M:S).
  final pulumi.Input<String>? endTime;
  /// Specifies the recurrence start time (H:M:S).
  final pulumi.Input<String>? startTime;

  /// Creates a new [AlertProcessingRuleActionGroupScheduleRecurrenceMonthly].
  /// [daysOfMonths] Specifies a list of dayOfMonth to recurrence. Possible values are integers between `1` - `31`.
  /// [endTime] Specifies the recurrence end time (H:M:S).
  /// [startTime] Specifies the recurrence start time (H:M:S).
  const AlertProcessingRuleActionGroupScheduleRecurrenceMonthly({
    required this.daysOfMonths,
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfMonths': daysOfMonths,
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory AlertProcessingRuleActionGroupScheduleRecurrenceMonthly.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleActionGroupScheduleRecurrenceMonthly(
      daysOfMonths: pulumi.Input.fromValue((map['daysOfMonths'] as List).cast<int>()),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

