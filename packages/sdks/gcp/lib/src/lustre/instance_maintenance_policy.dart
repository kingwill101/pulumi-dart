// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_maintenance_policy_maintenance_exclusion_window.dart';
import 'instance_maintenance_policy_weekly_maintenance_windows.dart';

class InstanceMaintenancePolicy {
  /// The exclusion windows for the instance. Currently limited to 1 window.
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicyMaintenanceExclusionWindow?>? maintenanceExclusionWindow;
  /// The weekly maintenance windows for the instance. Currently limited to 1
  /// window.
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicyWeeklyMaintenanceWindows> weeklyMaintenanceWindows;

  /// Creates a new [InstanceMaintenancePolicy].
  /// [maintenanceExclusionWindow] The exclusion windows for the instance. Currently limited to 1 window.
  /// [weeklyMaintenanceWindows] The weekly maintenance windows for the instance. Currently limited to 1
  const InstanceMaintenancePolicy({
    this.maintenanceExclusionWindow,
    required this.weeklyMaintenanceWindows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceExclusionWindow': ?pulumi.Input.mapOptionalInputValue<InstanceMaintenancePolicyMaintenanceExclusionWindow, Map<String, dynamic>>(maintenanceExclusionWindow, (value) => value.toMap()),
      'weeklyMaintenanceWindows': pulumi.Input.mapInputValue<InstanceMaintenancePolicyWeeklyMaintenanceWindows, Map<String, dynamic>>(weeklyMaintenanceWindows, (value) => value.toMap()),
    };
  }

  factory InstanceMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenancePolicy(
      maintenanceExclusionWindow: (() { final guardedValue = map['maintenanceExclusionWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMaintenancePolicyMaintenanceExclusionWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weeklyMaintenanceWindows: pulumi.Input.fromValue(InstanceMaintenancePolicyWeeklyMaintenanceWindows.fromMap((map['weeklyMaintenanceWindows']! as Map).cast<String, dynamic>())),
    );
  }
}
