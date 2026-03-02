// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_day_of_week_metastore_v1alpha.dart';

/// Maintenance window. This specifies when Dataproc Metastore may perform system maintenance operation to the service.
class MaintenanceWindowMetastoreV1alpha {
  /// The day of week, when the window starts.
  final pulumi.Input<MaintenanceWindowDayOfWeekMetastoreV1alpha>? dayOfWeek;
  /// The hour of day (0-23) when the window starts.
  final pulumi.Input<int>? hourOfDay;

  /// Creates a new [MaintenanceWindowMetastoreV1alpha].
  /// [dayOfWeek] The day of week, when the window starts.
  /// [hourOfDay] The hour of day (0-23) when the window starts.
  MaintenanceWindowMetastoreV1alpha({
    this.dayOfWeek,
    this.hourOfDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindowDayOfWeekMetastoreV1alpha, String>(dayOfWeek, (value) => value.value),
      'hourOfDay': ?hourOfDay,
    };
  }

  factory MaintenanceWindowMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowMetastoreV1alpha(
      dayOfWeek: map['dayOfWeek'] == null ? null : (MaintenanceWindowDayOfWeekMetastoreV1alpha.fromValue(map['dayOfWeek']! as String)).input(),
      hourOfDay: map['hourOfDay'] == null ? null : (map['hourOfDay']! as int).input(),
    );
  }
}

