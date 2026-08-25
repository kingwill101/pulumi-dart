// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport {
  /// Whether to enable the maintenance exclusion until the end of support for this NodePool.
  final pulumi.Input<bool?>? enabled;
  /// End time of the maintenance exclusion.
  final pulumi.Input<String?>? endTime;
  /// Start time of the maintenance exclusion.
  final pulumi.Input<String?>? startTime;

  /// Creates a new [ClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport].
  /// [enabled] Whether to enable the maintenance exclusion until the end of support for this NodePool.
  /// [endTime] End time of the maintenance exclusion.
  /// [startTime] Start time of the maintenance exclusion.
  const ClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport({
    this.enabled,
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory ClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolMaintenancePolicyExclusionUntilEndOfSupport(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
