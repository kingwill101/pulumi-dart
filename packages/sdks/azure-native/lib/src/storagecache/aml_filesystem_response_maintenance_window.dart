// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Start time of a 30-minute weekly maintenance window.
class AmlFilesystemResponseMaintenanceWindow {
  /// Day of the week on which the maintenance window will occur.
  final pulumi.Input<String>? dayOfWeek;
  /// The time of day (in UTC) to start the maintenance window.
  final pulumi.Input<String>? timeOfDayUTC;

  /// Creates a new [AmlFilesystemResponseMaintenanceWindow].
  /// [dayOfWeek] Day of the week on which the maintenance window will occur.
  /// [timeOfDayUTC] The time of day (in UTC) to start the maintenance window.
  const AmlFilesystemResponseMaintenanceWindow({
    this.dayOfWeek,
    this.timeOfDayUTC,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?dayOfWeek,
      'timeOfDayUTC': ?timeOfDayUTC,
    };
  }

  factory AmlFilesystemResponseMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemResponseMaintenanceWindow(
      dayOfWeek: (() { final guardedValue = map['dayOfWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeOfDayUTC: (() { final guardedValue = map['timeOfDayUTC']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

