// ignore_for_file: unused_element, unnecessary_cast


class GetHostPoolScheduledAgentUpdateSchedule {
  /// The day of the week on which agent updates should be performed.
  final String dayOfWeek;
  /// The hour of day the update window should start.
  final int hourOfDay;

  /// Creates a new [GetHostPoolScheduledAgentUpdateSchedule].
  /// [dayOfWeek] The day of the week on which agent updates should be performed.
  /// [hourOfDay] The hour of day the update window should start.
  GetHostPoolScheduledAgentUpdateSchedule({
    required this.dayOfWeek,
    required this.hourOfDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'hourOfDay': hourOfDay,
    };
  }

  factory GetHostPoolScheduledAgentUpdateSchedule.fromMap(Map<String, dynamic> map) {
    return GetHostPoolScheduledAgentUpdateSchedule(
      dayOfWeek: map['dayOfWeek'] as String,
      hourOfDay: map['hourOfDay'] as int,
    );
  }
}

