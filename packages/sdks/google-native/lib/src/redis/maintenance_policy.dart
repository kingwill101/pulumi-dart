// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'weekly_maintenance_window.dart';

/// Maintenance policy for an instance.
class MaintenancePolicy {
  /// Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  final pulumi.Input<String>? description;
  /// Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_window is expected to be one.
  final pulumi.Input<List<WeeklyMaintenanceWindow>>? weeklyMaintenanceWindow;

  /// Creates a new [MaintenancePolicy].
  /// [description] Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  /// [weeklyMaintenanceWindow] Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_window is expected to be one.
  MaintenancePolicy({
    this.description,
    this.weeklyMaintenanceWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'weeklyMaintenanceWindow': ?pulumi.Input.mapOptionalInputValue<List<WeeklyMaintenanceWindow>, List<Map<String, dynamic>>>(weeklyMaintenanceWindow, (value) => pulumi.Input.encodeList<WeeklyMaintenanceWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return MaintenancePolicy(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      weeklyMaintenanceWindow: map['weeklyMaintenanceWindow'] == null ? null : (pulumi.Input.decodeList<WeeklyMaintenanceWindow>(map['weeklyMaintenanceWindow']!, (value) => WeeklyMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

