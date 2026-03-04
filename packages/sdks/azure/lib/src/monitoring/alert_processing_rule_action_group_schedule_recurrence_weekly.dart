// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertProcessingRuleActionGroupScheduleRecurrenceWeekly {
  /// Specifies a list of dayOfWeek to recurrence. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, and `Saturday`.
  final pulumi.Input<List<String>> daysOfWeeks;

  /// Specifies the recurrence end time (H:M:S).
  final pulumi.Input<String>? endTime;

  /// Specifies the recurrence start time (H:M:S).
  final pulumi.Input<String>? startTime;

  /// Creates a new [AlertProcessingRuleActionGroupScheduleRecurrenceWeekly].
  /// [daysOfWeeks] Specifies a list of dayOfWeek to recurrence. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, and `Saturday`.
  /// [endTime] Specifies the recurrence end time (H:M:S).
  /// [startTime] Specifies the recurrence start time (H:M:S).
  AlertProcessingRuleActionGroupScheduleRecurrenceWeekly({
    required this.daysOfWeeks,
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeeks': daysOfWeeks,
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory AlertProcessingRuleActionGroupScheduleRecurrenceWeekly.fromMap(
    Map<String, dynamic> map,
  ) {
    return AlertProcessingRuleActionGroupScheduleRecurrenceWeekly(
      daysOfWeeks: pulumi.Input.fromValue(
        (map['daysOfWeeks'] as List).cast<String>(),
      ),
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
