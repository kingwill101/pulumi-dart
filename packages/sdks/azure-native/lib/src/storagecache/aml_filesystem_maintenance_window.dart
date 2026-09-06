// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_day_of_week_type.dart';

/// Start time of a 30-minute weekly maintenance window.
class AmlFilesystemMaintenanceWindow {
  /// Day of the week on which the maintenance window will occur.
  final pulumi.Input<MaintenanceDayOfWeekType?>? dayOfWeek;
  /// The time of day (in UTC) to start the maintenance window.
  final pulumi.Input<String?>? timeOfDayUTC;

  /// Creates a new [AmlFilesystemMaintenanceWindow].
  /// [dayOfWeek] Day of the week on which the maintenance window will occur.
  /// [timeOfDayUTC] The time of day (in UTC) to start the maintenance window.
  const AmlFilesystemMaintenanceWindow({
    this.dayOfWeek,
    this.timeOfDayUTC,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?pulumi.Input.mapOptionalInputValue<MaintenanceDayOfWeekType, String>(dayOfWeek, (value) => value.wireValue),
      'timeOfDayUTC': ?timeOfDayUTC,
    };
  }

  factory AmlFilesystemMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemMaintenanceWindow(
      dayOfWeek: (() { final guardedValue = map['dayOfWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceDayOfWeekType.fromValue(guardedValue as String)); })(),
      timeOfDayUTC: (() { final guardedValue = map['timeOfDayUTC']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
