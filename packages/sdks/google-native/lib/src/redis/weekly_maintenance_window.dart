// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_of_day.dart';
import 'weekly_maintenance_window_day.dart';

/// Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.
class WeeklyMaintenanceWindow {
  /// The day of week that maintenance updates occur.
  final pulumi.Input<WeeklyMaintenanceWindowDay> day;
  /// Start time of the window in UTC time.
  final pulumi.Input<TimeOfDay> startTime;

  /// Creates a new [WeeklyMaintenanceWindow].
  /// [day] The day of week that maintenance updates occur.
  /// [startTime] Start time of the window in UTC time.
  const WeeklyMaintenanceWindow({
    required this.day,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': pulumi.Input.mapInputValue<WeeklyMaintenanceWindowDay, String>(day, (value) => value.wireValue),
      'startTime': pulumi.Input.mapInputValue<TimeOfDay, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory WeeklyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceWindow(
      day: pulumi.Input.fromValue(WeeklyMaintenanceWindowDay.fromValue(map['day']! as String)),
      startTime: pulumi.Input.fromValue(TimeOfDay.fromMap((map['startTime']! as Map).cast<String, dynamic>())),
    );
  }
}
