// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerPoolsResultNotificationFilterOrigin {
  /// If set true, disable notifications for this type of resource (pool or origin).
  final pulumi.Input<bool> disable;
  /// If present, send notifications only for this health status (e.g. false for only DOWN events). Use null to reset (all events).
  final pulumi.Input<bool> healthy;

  /// Creates a new [GetLoadBalancerPoolsResultNotificationFilterOrigin].
  /// [disable] If set true, disable notifications for this type of resource (pool or origin).
  /// [healthy] If present, send notifications only for this health status (e.g. false for only DOWN events). Use null to reset (all events).
  const GetLoadBalancerPoolsResultNotificationFilterOrigin({
    required this.disable,
    required this.healthy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disable': disable,
      'healthy': healthy,
    };
  }

  factory GetLoadBalancerPoolsResultNotificationFilterOrigin.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerPoolsResultNotificationFilterOrigin(
      disable: pulumi.Input.fromValue(map['disable'] as bool),
      healthy: pulumi.Input.fromValue(map['healthy'] as bool),
    );
  }
}
