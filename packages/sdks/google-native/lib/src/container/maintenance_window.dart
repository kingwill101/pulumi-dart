// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_maintenance_window.dart';
import 'recurring_time_window.dart';

/// MaintenanceWindow defines the maintenance window to be used for the cluster.
class MaintenanceWindow {
  /// DailyMaintenanceWindow specifies a daily maintenance operation window.
  final pulumi.Input<DailyMaintenanceWindow>? dailyMaintenanceWindow;
  /// Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  final pulumi.Input<Map<String, String>>? maintenanceExclusions;
  /// RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  final pulumi.Input<RecurringTimeWindow>? recurringWindow;

  /// Creates a new [MaintenanceWindow].
  /// [dailyMaintenanceWindow] DailyMaintenanceWindow specifies a daily maintenance operation window.
  /// [maintenanceExclusions] Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  /// [recurringWindow] RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  const MaintenanceWindow({
    this.dailyMaintenanceWindow,
    this.maintenanceExclusions,
    this.recurringWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyMaintenanceWindow': ?pulumi.Input.mapOptionalInputValue<DailyMaintenanceWindow, Map<String, dynamic>>(dailyMaintenanceWindow, (value) => value.toMap()),
      'maintenanceExclusions': ?maintenanceExclusions,
      'recurringWindow': ?pulumi.Input.mapOptionalInputValue<RecurringTimeWindow, Map<String, dynamic>>(recurringWindow, (value) => value.toMap()),
    };
  }

  factory MaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindow(
      dailyMaintenanceWindow: (() { final guardedValue = map['dailyMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DailyMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceExclusions: (() { final guardedValue = map['maintenanceExclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      recurringWindow: (() { final guardedValue = map['recurringWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecurringTimeWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

