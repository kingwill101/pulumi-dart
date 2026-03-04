// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_of_day.dart';
import 'weekly_maintenance_window_day.dart';

/// Time window specified for weekly operations.
class WeeklyMaintenanceWindow {
  /// Allows to define schedule that runs specified day of the week.
  final pulumi.Input<WeeklyMaintenanceWindowDay> day;

  /// Duration of the time window.
  final pulumi.Input<String> duration;

  /// Start time of the window in UTC.
  final pulumi.Input<TimeOfDay> startTime;

  /// Creates a new [WeeklyMaintenanceWindow].
  /// [day] Allows to define schedule that runs specified day of the week.
  /// [duration] Duration of the time window.
  /// [startTime] Start time of the window in UTC.
  WeeklyMaintenanceWindow({
    required this.day,
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': pulumi.Input.mapInputValue<WeeklyMaintenanceWindowDay, String>(
        day,
        (value) => value.wireValue,
      ),
      'duration': duration,
      'startTime': pulumi.Input.mapInputValue<TimeOfDay, Map<String, dynamic>>(
        startTime,
        (value) => value.toMap(),
      ),
    };
  }

  factory WeeklyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceWindow(
      day: pulumi.Input.fromValue(
        WeeklyMaintenanceWindowDay.fromValue(map['day']! as String),
      ),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      startTime: pulumi.Input.fromValue(
        TimeOfDay.fromMap((map['startTime']! as Map).cast<String, dynamic>()),
      ),
    );
  }
}
