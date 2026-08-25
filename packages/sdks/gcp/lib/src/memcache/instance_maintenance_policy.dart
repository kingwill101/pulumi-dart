// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_maintenance_policy_weekly_maintenance_window.dart';

class InstanceMaintenancePolicy {
  /// (Output)
  /// Output only. The time when the policy was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits
  final pulumi.Input<String?>? createTime;
  /// Optional. Description of what this policy is for.
  /// Create/Update methods return INVALID_ARGUMENT if the
  /// length is greater than 512.
  final pulumi.Input<String?>? description;
  /// (Output)
  /// Output only. The time when the policy was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final pulumi.Input<String?>? updateTime;
  /// Required. Maintenance window that is applied to resources covered by this policy.
  /// Minimum 1. For the current version, the maximum number of weeklyMaintenanceWindows
  /// is expected to be one.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceMaintenancePolicyWeeklyMaintenanceWindow>> weeklyMaintenanceWindows;

  /// Creates a new [InstanceMaintenancePolicy].
  /// [createTime] (Output)
  /// [description] Optional. Description of what this policy is for.
  /// [updateTime] (Output)
  /// [weeklyMaintenanceWindows] Required. Maintenance window that is applied to resources covered by this policy.
  const InstanceMaintenancePolicy({
    this.createTime,
    this.description,
    this.updateTime,
    required this.weeklyMaintenanceWindows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'updateTime': ?updateTime,
      'weeklyMaintenanceWindows': pulumi.Input.mapInputValue<List<InstanceMaintenancePolicyWeeklyMaintenanceWindow>, List<Map<String, dynamic>>>(weeklyMaintenanceWindows, (value) => pulumi.Input.encodeList<InstanceMaintenancePolicyWeeklyMaintenanceWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenancePolicy(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeklyMaintenanceWindows: pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceMaintenancePolicyWeeklyMaintenanceWindow>(map['weeklyMaintenanceWindows']!, (value) => InstanceMaintenancePolicyWeeklyMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
