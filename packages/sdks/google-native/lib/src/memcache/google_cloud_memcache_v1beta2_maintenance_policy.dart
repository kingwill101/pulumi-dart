// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'weekly_maintenance_window_memcache_v1beta2.dart';

/// Maintenance policy per instance.
class GoogleCloudMemcacheV1beta2MaintenancePolicy {
  /// Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  final pulumi.Input<String>? description;
  /// Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_maintenance_windows is expected to be one.
  final pulumi.Input<List<WeeklyMaintenanceWindowMemcacheV1beta2>> weeklyMaintenanceWindow;

  /// Creates a new [GoogleCloudMemcacheV1beta2MaintenancePolicy].
  /// [description] Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  /// [weeklyMaintenanceWindow] Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_maintenance_windows is expected to be one.
  const GoogleCloudMemcacheV1beta2MaintenancePolicy({
    this.description,
    required this.weeklyMaintenanceWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'weeklyMaintenanceWindow': pulumi.Input.mapInputValue<List<WeeklyMaintenanceWindowMemcacheV1beta2>, List<Map<String, dynamic>>>(weeklyMaintenanceWindow, (value) => pulumi.Input.encodeList<WeeklyMaintenanceWindowMemcacheV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudMemcacheV1beta2MaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMemcacheV1beta2MaintenancePolicy(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeklyMaintenanceWindow: pulumi.Input.fromValue(pulumi.Input.decodeList<WeeklyMaintenanceWindowMemcacheV1beta2>(map['weeklyMaintenanceWindow']!, (value) => WeeklyMaintenanceWindowMemcacheV1beta2.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

