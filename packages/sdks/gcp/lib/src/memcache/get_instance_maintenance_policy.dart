// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_maintenance_policy_weekly_maintenance_window.dart';

class GetInstanceMaintenancePolicy {
  /// Output only. The time when the policy was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits
  final pulumi.Input<String> createTime;

  /// Optional. Description of what this policy is for.
  /// Create/Update methods return INVALID_ARGUMENT if the
  /// length is greater than 512.
  final pulumi.Input<String> description;

  /// Output only. The time when the policy was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
  /// resolution and up to nine fractional digits.
  final pulumi.Input<String> updateTime;

  /// Required. Maintenance window that is applied to resources covered by this policy.
  /// Minimum 1. For the current version, the maximum number of weekly_maintenance_windows
  /// is expected to be one.
  final pulumi.Input<List<GetInstanceMaintenancePolicyWeeklyMaintenanceWindow>>
  weeklyMaintenanceWindows;

  /// Creates a new [GetInstanceMaintenancePolicy].
  /// [createTime] Output only. The time when the policy was created.
  /// [description] Optional. Description of what this policy is for.
  /// [updateTime] Output only. The time when the policy was updated.
  /// [weeklyMaintenanceWindows] Required. Maintenance window that is applied to resources covered by this policy.
  GetInstanceMaintenancePolicy({
    required this.createTime,
    required this.description,
    required this.updateTime,
    required this.weeklyMaintenanceWindows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'updateTime': updateTime,
      'weeklyMaintenanceWindows':
          pulumi.Input.mapInputValue<
            List<GetInstanceMaintenancePolicyWeeklyMaintenanceWindow>,
            List<Map<String, dynamic>>
          >(
            weeklyMaintenanceWindows,
            (value) =>
                pulumi.Input.encodeList<
                  GetInstanceMaintenancePolicyWeeklyMaintenanceWindow,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetInstanceMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GetInstanceMaintenancePolicy(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
      weeklyMaintenanceWindows: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetInstanceMaintenancePolicyWeeklyMaintenanceWindow
        >(
          map['weeklyMaintenanceWindows']!,
          (value) =>
              GetInstanceMaintenancePolicyWeeklyMaintenanceWindow.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
