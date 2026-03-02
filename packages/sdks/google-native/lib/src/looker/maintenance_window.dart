// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_day_of_week.dart';
import 'time_of_day.dart';

/// Specifies the recurring maintenance window.
class MaintenanceWindow {
  /// Day of the week for this MaintenanceWindow (in UTC).
  final pulumi.Input<MaintenanceWindowDayOfWeek> dayOfWeek;
  /// Time in UTC when the period starts. Maintenance will be scheduled within 60 minutes.
  final pulumi.Input<TimeOfDay> startTime;

  /// Creates a new [MaintenanceWindow].
  /// [dayOfWeek] Day of the week for this MaintenanceWindow (in UTC).
  /// [startTime] Time in UTC when the period starts. Maintenance will be scheduled within 60 minutes.
  MaintenanceWindow({
    required this.dayOfWeek,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': pulumi.Input.mapInputValue<MaintenanceWindowDayOfWeek, String>(dayOfWeek, (value) => value.value),
      'startTime': pulumi.Input.mapInputValue<TimeOfDay, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory MaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindow(
      dayOfWeek: (MaintenanceWindowDayOfWeek.fromValue(map['dayOfWeek'] as String)).input(),
      startTime: (TimeOfDay.fromMap((map['startTime'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

