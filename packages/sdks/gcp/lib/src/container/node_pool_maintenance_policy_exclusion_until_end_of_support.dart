// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolMaintenancePolicyExclusionUntilEndOfSupport {
  /// When true, the node pool will not be automatically upgraded by GKE until the node pool version's end of support date.
  final pulumi.Input<bool>? enabled;
  /// The time when the maintenance policy is no longer effective, i.e., the node pool version's end of support date.
  final pulumi.Input<String>? endTime;
  /// The time when the maintenance policy is first created.
  final pulumi.Input<String>? startTime;

  /// Creates a new [NodePoolMaintenancePolicyExclusionUntilEndOfSupport].
  /// [enabled] When true, the node pool will not be automatically upgraded by GKE until the node pool version's end of support date.
  /// [endTime] The time when the maintenance policy is no longer effective, i.e., the node pool version's end of support date.
  /// [startTime] The time when the maintenance policy is first created.
  const NodePoolMaintenancePolicyExclusionUntilEndOfSupport({
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

  factory NodePoolMaintenancePolicyExclusionUntilEndOfSupport.fromMap(Map<String, dynamic> map) {
    return NodePoolMaintenancePolicyExclusionUntilEndOfSupport(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
