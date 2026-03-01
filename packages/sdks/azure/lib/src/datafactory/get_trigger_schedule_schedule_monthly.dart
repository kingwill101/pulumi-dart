// ignore_for_file: unused_element, unnecessary_cast


class GetTriggerScheduleScheduleMonthly {
  /// The occurrence of the specified day during the month.
  final int week;
  /// The day of the week on which the trigger runs.
  final String weekday;

  /// Creates a new [GetTriggerScheduleScheduleMonthly].
  /// [week] The occurrence of the specified day during the month.
  /// [weekday] The day of the week on which the trigger runs.
  GetTriggerScheduleScheduleMonthly({
    required this.week,
    required this.weekday,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'week': week,
      'weekday': weekday,
    };
  }

  factory GetTriggerScheduleScheduleMonthly.fromMap(Map<String, dynamic> map) {
    return GetTriggerScheduleScheduleMonthly(
      week: map['week'] as int,
      weekday: map['weekday'] as String,
    );
  }
}

