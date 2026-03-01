// ignore_for_file: unused_element, unnecessary_cast

import 'weekly_schedule_day_of_week.dart';

/// Represents a weekly schedule.
class WeeklySchedule {
  /// Day of the week.
  final WeeklyScheduleDayOfWeek dayOfWeek;

  /// Creates a new [WeeklySchedule].
  /// [dayOfWeek] Day of the week.
  WeeklySchedule({
    required this.dayOfWeek,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek.value,
    };
  }

  factory WeeklySchedule.fromMap(Map<String, dynamic> map) {
    return WeeklySchedule(
      dayOfWeek: WeeklyScheduleDayOfWeek.fromValue(map['dayOfWeek'] as String),
    );
  }
}

