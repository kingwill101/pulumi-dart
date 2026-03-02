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
  MaintenanceWindow({
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
      dailyMaintenanceWindow: map['dailyMaintenanceWindow'] == null ? null : (DailyMaintenanceWindow.fromMap((map['dailyMaintenanceWindow']! as Map).cast<String, dynamic>())).input(),
      maintenanceExclusions: map['maintenanceExclusions'] == null ? null : ((map['maintenanceExclusions']! as Map).cast<String, String>()).input(),
      recurringWindow: map['recurringWindow'] == null ? null : (RecurringTimeWindow.fromMap((map['recurringWindow']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

