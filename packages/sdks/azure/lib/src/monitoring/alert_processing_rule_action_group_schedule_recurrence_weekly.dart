// ignore_for_file: unused_element, unnecessary_cast


class AlertProcessingRuleActionGroupScheduleRecurrenceWeekly {
  /// Specifies a list of dayOfWeek to recurrence. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, and `Saturday`.
  final List<String> daysOfWeeks;
  /// Specifies the recurrence end time (H:M:S).
  final String? endTime;
  /// Specifies the recurrence start time (H:M:S).
  final String? startTime;

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

  factory AlertProcessingRuleActionGroupScheduleRecurrenceWeekly.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleActionGroupScheduleRecurrenceWeekly(
      daysOfWeeks: (map['daysOfWeeks'] as List).cast<String>(),
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

