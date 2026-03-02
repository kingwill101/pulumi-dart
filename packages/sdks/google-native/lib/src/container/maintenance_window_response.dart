// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_maintenance_window_response.dart';
import 'recurring_time_window_response.dart';

/// MaintenanceWindow defines the maintenance window to be used for the cluster.
class MaintenanceWindowResponse {
  /// DailyMaintenanceWindow specifies a daily maintenance operation window.
  final pulumi.Input<DailyMaintenanceWindowResponse> dailyMaintenanceWindow;
  /// Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  final pulumi.Input<Map<String, String>> maintenanceExclusions;
  /// RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  final pulumi.Input<RecurringTimeWindowResponse> recurringWindow;

  /// Creates a new [MaintenanceWindowResponse].
  /// [dailyMaintenanceWindow] DailyMaintenanceWindow specifies a daily maintenance operation window.
  /// [maintenanceExclusions] Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  /// [recurringWindow] RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  MaintenanceWindowResponse({
    required this.dailyMaintenanceWindow,
    required this.maintenanceExclusions,
    required this.recurringWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyMaintenanceWindow': pulumi.Input.mapInputValue<DailyMaintenanceWindowResponse, Map<String, dynamic>>(dailyMaintenanceWindow, (value) => value.toMap()),
      'maintenanceExclusions': maintenanceExclusions,
      'recurringWindow': pulumi.Input.mapInputValue<RecurringTimeWindowResponse, Map<String, dynamic>>(recurringWindow, (value) => value.toMap()),
    };
  }

  factory MaintenanceWindowResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowResponse(
      dailyMaintenanceWindow: (DailyMaintenanceWindowResponse.fromMap((map['dailyMaintenanceWindow'] as Map).cast<String, dynamic>())).input(),
      maintenanceExclusions: ((map['maintenanceExclusions'] as Map).cast<String, String>()).input(),
      recurringWindow: (RecurringTimeWindowResponse.fromMap((map['recurringWindow'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

