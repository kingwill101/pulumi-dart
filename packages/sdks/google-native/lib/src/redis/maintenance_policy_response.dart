// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'weekly_maintenance_window_response.dart';

/// Maintenance policy for an instance.
class MaintenancePolicyResponse {
  /// The time when the policy was created.
  final pulumi.Input<String> createTime;
  /// Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  final pulumi.Input<String> description;
  /// The time when the policy was last updated.
  final pulumi.Input<String> updateTime;
  /// Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_window is expected to be one.
  final pulumi.Input<List<WeeklyMaintenanceWindowResponse>> weeklyMaintenanceWindow;

  /// Creates a new [MaintenancePolicyResponse].
  /// [createTime] The time when the policy was created.
  /// [description] Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  /// [updateTime] The time when the policy was last updated.
  /// [weeklyMaintenanceWindow] Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_window is expected to be one.
  const MaintenancePolicyResponse({
    required this.createTime,
    required this.description,
    required this.updateTime,
    required this.weeklyMaintenanceWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'updateTime': updateTime,
      'weeklyMaintenanceWindow': pulumi.Input.mapInputValue<List<WeeklyMaintenanceWindowResponse>, List<Map<String, dynamic>>>(weeklyMaintenanceWindow, (value) => pulumi.Input.encodeList<WeeklyMaintenanceWindowResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MaintenancePolicyResponse.fromMap(Map<String, dynamic> map) {
    return MaintenancePolicyResponse(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
      weeklyMaintenanceWindow: pulumi.Input.fromValue(pulumi.Input.decodeList<WeeklyMaintenanceWindowResponse>(map['weeklyMaintenanceWindow']!, (value) => WeeklyMaintenanceWindowResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
