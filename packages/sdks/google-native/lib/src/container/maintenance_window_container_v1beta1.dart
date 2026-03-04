// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_maintenance_window_container_v1beta1.dart';
import 'recurring_time_window_container_v1beta1.dart';

/// MaintenanceWindow defines the maintenance window to be used for the cluster.
class MaintenanceWindowContainerV1beta1 {
  /// DailyMaintenanceWindow specifies a daily maintenance operation window.
  final pulumi.Input<DailyMaintenanceWindowContainerV1beta1>?
  dailyMaintenanceWindow;

  /// Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  final pulumi.Input<Map<String, String>>? maintenanceExclusions;

  /// RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  final pulumi.Input<RecurringTimeWindowContainerV1beta1>? recurringWindow;

  /// Creates a new [MaintenanceWindowContainerV1beta1].
  /// [dailyMaintenanceWindow] DailyMaintenanceWindow specifies a daily maintenance operation window.
  /// [maintenanceExclusions] Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  /// [recurringWindow] RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  MaintenanceWindowContainerV1beta1({
    this.dailyMaintenanceWindow,
    this.maintenanceExclusions,
    this.recurringWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyMaintenanceWindow':
          ?pulumi.Input.mapOptionalInputValue<
            DailyMaintenanceWindowContainerV1beta1,
            Map<String, dynamic>
          >(dailyMaintenanceWindow, (value) => value.toMap()),
      'maintenanceExclusions': ?maintenanceExclusions,
      'recurringWindow':
          ?pulumi.Input.mapOptionalInputValue<
            RecurringTimeWindowContainerV1beta1,
            Map<String, dynamic>
          >(recurringWindow, (value) => value.toMap()),
    };
  }

  factory MaintenanceWindowContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowContainerV1beta1(
      dailyMaintenanceWindow: (() {
        final guardedValue = map['dailyMaintenanceWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DailyMaintenanceWindowContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      maintenanceExclusions: (() {
        final guardedValue = map['maintenanceExclusions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      recurringWindow: (() {
        final guardedValue = map['recurringWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RecurringTimeWindowContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
