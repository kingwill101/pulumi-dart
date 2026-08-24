// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_pool_notification_filter_origin.dart';
import 'load_balancer_pool_notification_filter_pool.dart';

class LoadBalancerPoolNotificationFilter {
  /// Filter options for a particular resource type (pool or origin). Use null to reset.
  final pulumi.Input<LoadBalancerPoolNotificationFilterOrigin?>? origin;
  /// Filter options for a particular resource type (pool or origin). Use null to reset.
  final pulumi.Input<LoadBalancerPoolNotificationFilterPool?>? pool;

  /// Creates a new [LoadBalancerPoolNotificationFilter].
  /// [origin] Filter options for a particular resource type (pool or origin). Use null to reset.
  /// [pool] Filter options for a particular resource type (pool or origin). Use null to reset.
  const LoadBalancerPoolNotificationFilter({
    this.origin,
    this.pool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'origin': ?pulumi.Input.mapOptionalInputValue<LoadBalancerPoolNotificationFilterOrigin, Map<String, dynamic>>(origin, (value) => value.toMap()),
      'pool': ?pulumi.Input.mapOptionalInputValue<LoadBalancerPoolNotificationFilterPool, Map<String, dynamic>>(pool, (value) => value.toMap()),
    };
  }

  factory LoadBalancerPoolNotificationFilter.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPoolNotificationFilter(
      origin: (() { final guardedValue = map['origin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerPoolNotificationFilterOrigin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pool: (() { final guardedValue = map['pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerPoolNotificationFilterPool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
