// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerPoolNotificationFilterPool {
  /// If set true, disable notifications for this type of resource (pool or origin).
  final pulumi.Input<bool?>? disable;
  /// If present, send notifications only for this health status (e.g. false for only DOWN events). Use null to reset (all events).
  final pulumi.Input<bool?>? healthy;

  /// Creates a new [LoadBalancerPoolNotificationFilterPool].
  /// [disable] If set true, disable notifications for this type of resource (pool or origin).
  /// [healthy] If present, send notifications only for this health status (e.g. false for only DOWN events). Use null to reset (all events).
  const LoadBalancerPoolNotificationFilterPool({
    this.disable,
    this.healthy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disable': ?disable,
      'healthy': ?healthy,
    };
  }

  factory LoadBalancerPoolNotificationFilterPool.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPoolNotificationFilterPool(
      disable: (() { final guardedValue = map['disable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      healthy: (() { final guardedValue = map['healthy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
