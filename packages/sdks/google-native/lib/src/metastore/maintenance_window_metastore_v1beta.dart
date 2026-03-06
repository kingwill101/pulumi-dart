// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_day_of_week_metastore_v1beta.dart';

/// Maintenance window. This specifies when Dataproc Metastore may perform system maintenance operation to the service.
class MaintenanceWindowMetastoreV1beta {
  /// The day of week, when the window starts.
  final pulumi.Input<MaintenanceWindowDayOfWeekMetastoreV1beta>? dayOfWeek;
  /// The hour of day (0-23) when the window starts.
  final pulumi.Input<int>? hourOfDay;

  /// Creates a new [MaintenanceWindowMetastoreV1beta].
  /// [dayOfWeek] The day of week, when the window starts.
  /// [hourOfDay] The hour of day (0-23) when the window starts.
  const MaintenanceWindowMetastoreV1beta({
    this.dayOfWeek,
    this.hourOfDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindowDayOfWeekMetastoreV1beta, String>(dayOfWeek, (value) => value.wireValue),
      'hourOfDay': ?hourOfDay,
    };
  }

  factory MaintenanceWindowMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowMetastoreV1beta(
      dayOfWeek: (() { final guardedValue = map['dayOfWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceWindowDayOfWeekMetastoreV1beta.fromValue(guardedValue as String)); })(),
      hourOfDay: (() { final guardedValue = map['hourOfDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

