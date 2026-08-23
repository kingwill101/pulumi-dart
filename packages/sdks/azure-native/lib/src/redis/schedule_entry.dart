// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_of_week.dart';

/// Patch schedule entry for a Premium Redis Cache.
class ScheduleEntry {
  /// Day of the week when a cache can be patched.
  final pulumi.Input<DayOfWeek> dayOfWeek;
  /// ISO8601 timespan specifying how much time cache patching can take.
  final pulumi.Input<String>? maintenanceWindow;
  /// Start hour after which cache patching can start.
  final pulumi.Input<int> startHourUtc;

  /// Creates a new [ScheduleEntry].
  /// [dayOfWeek] Day of the week when a cache can be patched.
  /// [maintenanceWindow] ISO8601 timespan specifying how much time cache patching can take.
  /// [startHourUtc] Start hour after which cache patching can start.
  const ScheduleEntry({
    required this.dayOfWeek,
    this.maintenanceWindow,
    required this.startHourUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': pulumi.Input.mapInputValue<DayOfWeek, String>(dayOfWeek, (value) => value.wireValue),
      'maintenanceWindow': ?maintenanceWindow,
      'startHourUtc': startHourUtc,
    };
  }

  factory ScheduleEntry.fromMap(Map<String, dynamic> map) {
    return ScheduleEntry(
      dayOfWeek: pulumi.Input.fromValue(DayOfWeek.fromValue(map['dayOfWeek']! as String)),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startHourUtc: pulumi.Input.fromValue(map['startHourUtc'] as int),
    );
  }
}
