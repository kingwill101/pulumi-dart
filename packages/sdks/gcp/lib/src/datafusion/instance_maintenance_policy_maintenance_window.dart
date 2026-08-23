// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_maintenance_policy_maintenance_window_recurring_time_window.dart';

class InstanceMaintenancePolicyMaintenanceWindow {
  /// The recurring time window of the maintenance window.
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindow> recurringTimeWindow;

  /// Creates a new [InstanceMaintenancePolicyMaintenanceWindow].
  /// [recurringTimeWindow] The recurring time window of the maintenance window.
  const InstanceMaintenancePolicyMaintenanceWindow({
    required this.recurringTimeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurringTimeWindow': pulumi.Input.mapInputValue<InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindow, Map<String, dynamic>>(recurringTimeWindow, (value) => value.toMap()),
    };
  }

  factory InstanceMaintenancePolicyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenancePolicyMaintenanceWindow(
      recurringTimeWindow: pulumi.Input.fromValue(InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindow.fromMap((map['recurringTimeWindow']! as Map).cast<String, dynamic>())),
    );
  }
}
