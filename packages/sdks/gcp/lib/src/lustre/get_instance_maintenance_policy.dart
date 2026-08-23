// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_maintenance_policy_maintenance_exclusion_window.dart';
import 'get_instance_maintenance_policy_weekly_maintenance_window.dart';

class GetInstanceMaintenancePolicy {
  /// The exclusion windows for the instance. Currently limited to 1 window.
  final pulumi.Input<List<GetInstanceMaintenancePolicyMaintenanceExclusionWindow>> maintenanceExclusionWindows;
  /// The weekly maintenance windows for the instance. Currently limited to 1
  /// window.
  final pulumi.Input<List<GetInstanceMaintenancePolicyWeeklyMaintenanceWindow>> weeklyMaintenanceWindows;

  /// Creates a new [GetInstanceMaintenancePolicy].
  /// [maintenanceExclusionWindows] The exclusion windows for the instance. Currently limited to 1 window.
  /// [weeklyMaintenanceWindows] The weekly maintenance windows for the instance. Currently limited to 1
  const GetInstanceMaintenancePolicy({
    required this.maintenanceExclusionWindows,
    required this.weeklyMaintenanceWindows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceExclusionWindows': pulumi.Input.mapInputValue<List<GetInstanceMaintenancePolicyMaintenanceExclusionWindow>, List<Map<String, dynamic>>>(maintenanceExclusionWindows, (value) => pulumi.Input.encodeList<GetInstanceMaintenancePolicyMaintenanceExclusionWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'weeklyMaintenanceWindows': pulumi.Input.mapInputValue<List<GetInstanceMaintenancePolicyWeeklyMaintenanceWindow>, List<Map<String, dynamic>>>(weeklyMaintenanceWindows, (value) => pulumi.Input.encodeList<GetInstanceMaintenancePolicyWeeklyMaintenanceWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GetInstanceMaintenancePolicy(
      maintenanceExclusionWindows: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceMaintenancePolicyMaintenanceExclusionWindow>(map['maintenanceExclusionWindows']!, (value) => GetInstanceMaintenancePolicyMaintenanceExclusionWindow.fromMap((value as Map).cast<String, dynamic>()))),
      weeklyMaintenanceWindows: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceMaintenancePolicyWeeklyMaintenanceWindow>(map['weeklyMaintenanceWindows']!, (value) => GetInstanceMaintenancePolicyWeeklyMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
