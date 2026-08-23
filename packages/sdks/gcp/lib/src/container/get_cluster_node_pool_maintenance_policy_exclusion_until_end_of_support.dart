// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport {
  /// Whether to enable the maintenance exclusion until the end of support for this NodePool.
  final pulumi.Input<bool> enabled;
  /// End time of the maintenance exclusion.
  final pulumi.Input<String> endTime;
  /// Start time of the maintenance exclusion.
  final pulumi.Input<String> startTime;

  /// Creates a new [GetClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport].
  /// [enabled] Whether to enable the maintenance exclusion until the end of support for this NodePool.
  /// [endTime] End time of the maintenance exclusion.
  /// [startTime] Start time of the maintenance exclusion.
  const GetClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport({
    required this.enabled,
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory GetClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
