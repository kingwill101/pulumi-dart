// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerMonitorGroupMember {
  /// The timestamp of when the monitor was added to the group
  final pulumi.Input<String> createdAt;
  /// Whether this monitor is enabled in the group
  final pulumi.Input<bool> enabled;
  /// The ID of the Monitor to use for checking the health of origins within this pool.
  final pulumi.Input<String> monitorId;
  /// Whether this monitor is used for monitoring only (does not affect pool health)
  final pulumi.Input<bool> monitoringOnly;
  /// Whether this monitor must be healthy for the pool to be considered healthy
  final pulumi.Input<bool> mustBeHealthy;
  /// The timestamp of when the monitor group member was last updated
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetLoadBalancerMonitorGroupMember].
  /// [createdAt] The timestamp of when the monitor was added to the group
  /// [enabled] Whether this monitor is enabled in the group
  /// [monitorId] The ID of the Monitor to use for checking the health of origins within this pool.
  /// [monitoringOnly] Whether this monitor is used for monitoring only (does not affect pool health)
  /// [mustBeHealthy] Whether this monitor must be healthy for the pool to be considered healthy
  /// [updatedAt] The timestamp of when the monitor group member was last updated
  const GetLoadBalancerMonitorGroupMember({
    required this.createdAt,
    required this.enabled,
    required this.monitorId,
    required this.monitoringOnly,
    required this.mustBeHealthy,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'enabled': enabled,
      'monitorId': monitorId,
      'monitoringOnly': monitoringOnly,
      'mustBeHealthy': mustBeHealthy,
      'updatedAt': updatedAt,
    };
  }

  factory GetLoadBalancerMonitorGroupMember.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerMonitorGroupMember(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      monitorId: pulumi.Input.fromValue(map['monitorId'] as String),
      monitoringOnly: pulumi.Input.fromValue(map['monitoringOnly'] as bool),
      mustBeHealthy: pulumi.Input.fromValue(map['mustBeHealthy'] as bool),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
