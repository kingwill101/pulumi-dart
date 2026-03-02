// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'weekly_maintenance_window_response_redis_v1beta1.dart';

/// Maintenance policy for an instance.
class MaintenancePolicyResponseRedisV1beta1 {
  /// The time when the policy was created.
  final pulumi.Input<String> createTime;
  /// Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  final pulumi.Input<String> description;
  /// The time when the policy was last updated.
  final pulumi.Input<String> updateTime;
  /// Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_window is expected to be one.
  final pulumi.Input<List<WeeklyMaintenanceWindowResponseRedisV1beta1>> weeklyMaintenanceWindow;

  /// Creates a new [MaintenancePolicyResponseRedisV1beta1].
  /// [createTime] The time when the policy was created.
  /// [description] Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.
  /// [updateTime] The time when the policy was last updated.
  /// [weeklyMaintenanceWindow] Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_window is expected to be one.
  MaintenancePolicyResponseRedisV1beta1({
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
      'weeklyMaintenanceWindow': pulumi.Input.mapInputValue<List<WeeklyMaintenanceWindowResponseRedisV1beta1>, List<Map<String, dynamic>>>(weeklyMaintenanceWindow, (value) => pulumi.Input.encodeList<WeeklyMaintenanceWindowResponseRedisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MaintenancePolicyResponseRedisV1beta1.fromMap(Map<String, dynamic> map) {
    return MaintenancePolicyResponseRedisV1beta1(
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
      weeklyMaintenanceWindow: (pulumi.Input.decodeList<WeeklyMaintenanceWindowResponseRedisV1beta1>(map['weeklyMaintenanceWindow'], (value) => WeeklyMaintenanceWindowResponseRedisV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

