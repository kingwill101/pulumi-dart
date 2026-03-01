// ignore_for_file: unused_element, unnecessary_cast

import 'day_of_week.dart';

/// Patch schedule entry for a Premium Redis Cache.
class ScheduleEntry {
  /// Day of the week when a cache can be patched.
  final DayOfWeek dayOfWeek;
  /// ISO8601 timespan specifying how much time cache patching can take.
  final String? maintenanceWindow;
  /// Start hour after which cache patching can start.
  final int startHourUtc;

  /// Creates a new [ScheduleEntry].
  /// [dayOfWeek] Day of the week when a cache can be patched.
  /// [maintenanceWindow] ISO8601 timespan specifying how much time cache patching can take.
  /// [startHourUtc] Start hour after which cache patching can start.
  ScheduleEntry({
    required this.dayOfWeek,
    this.maintenanceWindow,
    required this.startHourUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek.value,
      'maintenanceWindow': ?maintenanceWindow,
      'startHourUtc': startHourUtc,
    };
  }

  factory ScheduleEntry.fromMap(Map<String, dynamic> map) {
    return ScheduleEntry(
      dayOfWeek: DayOfWeek.fromValue(map['dayOfWeek'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : map['maintenanceWindow'] as String,
      startHourUtc: map['startHourUtc'] as int,
    );
  }
}

