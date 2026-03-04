// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_day_of_week.dart';

/// Maintenance window. This specifies when Dataproc Metastore may perform system maintenance operation to the service.
class MaintenanceWindow {
  /// The day of week, when the window starts.
  final pulumi.Input<MaintenanceWindowDayOfWeek>? dayOfWeek;

  /// The hour of day (0-23) when the window starts.
  final pulumi.Input<int>? hourOfDay;

  /// Creates a new [MaintenanceWindow].
  /// [dayOfWeek] The day of week, when the window starts.
  /// [hourOfDay] The hour of day (0-23) when the window starts.
  MaintenanceWindow({this.dayOfWeek, this.hourOfDay});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek':
          ?pulumi.Input.mapOptionalInputValue<
            MaintenanceWindowDayOfWeek,
            String
          >(dayOfWeek, (value) => value.wireValue),
      'hourOfDay': ?hourOfDay,
    };
  }

  factory MaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindow(
      dayOfWeek: (() {
        final guardedValue = map['dayOfWeek'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MaintenanceWindowDayOfWeek.fromValue(guardedValue as String),
        );
      })(),
      hourOfDay: (() {
        final guardedValue = map['hourOfDay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
