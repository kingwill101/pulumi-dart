// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_maintenance_window_response_container_v1beta1.dart';
import 'recurring_time_window_response_container_v1beta1.dart';

/// MaintenanceWindow defines the maintenance window to be used for the cluster.
class MaintenanceWindowResponseContainerV1beta1 {
  /// DailyMaintenanceWindow specifies a daily maintenance operation window.
  final pulumi.Input<DailyMaintenanceWindowResponseContainerV1beta1> dailyMaintenanceWindow;
  /// Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  final pulumi.Input<Map<String, String>> maintenanceExclusions;
  /// RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  final pulumi.Input<RecurringTimeWindowResponseContainerV1beta1> recurringWindow;

  /// Creates a new [MaintenanceWindowResponseContainerV1beta1].
  /// [dailyMaintenanceWindow] DailyMaintenanceWindow specifies a daily maintenance operation window.
  /// [maintenanceExclusions] Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  /// [recurringWindow] RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  MaintenanceWindowResponseContainerV1beta1({
    required this.dailyMaintenanceWindow,
    required this.maintenanceExclusions,
    required this.recurringWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyMaintenanceWindow': pulumi.Input.mapInputValue<DailyMaintenanceWindowResponseContainerV1beta1, Map<String, dynamic>>(dailyMaintenanceWindow, (value) => value.toMap()),
      'maintenanceExclusions': maintenanceExclusions,
      'recurringWindow': pulumi.Input.mapInputValue<RecurringTimeWindowResponseContainerV1beta1, Map<String, dynamic>>(recurringWindow, (value) => value.toMap()),
    };
  }

  factory MaintenanceWindowResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowResponseContainerV1beta1(
      dailyMaintenanceWindow: pulumi.Input.fromValue(DailyMaintenanceWindowResponseContainerV1beta1.fromMap((map['dailyMaintenanceWindow']! as Map).cast<String, dynamic>())),
      maintenanceExclusions: pulumi.Input.fromValue((map['maintenanceExclusions'] as Map).cast<String, String>()),
      recurringWindow: pulumi.Input.fromValue(RecurringTimeWindowResponseContainerV1beta1.fromMap((map['recurringWindow']! as Map).cast<String, dynamic>())),
    );
  }
}

