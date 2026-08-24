// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_pool_notification_filter_origin.dart';
import 'get_load_balancer_pool_notification_filter_pool.dart';

class GetLoadBalancerPoolNotificationFilter {
  /// Filter options for a particular resource type (pool or origin). Use null to reset.
  final pulumi.Input<GetLoadBalancerPoolNotificationFilterOrigin> origin;
  /// Filter options for a particular resource type (pool or origin). Use null to reset.
  final pulumi.Input<GetLoadBalancerPoolNotificationFilterPool> pool;

  /// Creates a new [GetLoadBalancerPoolNotificationFilter].
  /// [origin] Filter options for a particular resource type (pool or origin). Use null to reset.
  /// [pool] Filter options for a particular resource type (pool or origin). Use null to reset.
  const GetLoadBalancerPoolNotificationFilter({
    required this.origin,
    required this.pool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'origin': pulumi.Input.mapInputValue<GetLoadBalancerPoolNotificationFilterOrigin, Map<String, dynamic>>(origin, (value) => value.toMap()),
      'pool': pulumi.Input.mapInputValue<GetLoadBalancerPoolNotificationFilterPool, Map<String, dynamic>>(pool, (value) => value.toMap()),
    };
  }

  factory GetLoadBalancerPoolNotificationFilter.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerPoolNotificationFilter(
      origin: pulumi.Input.fromValue(GetLoadBalancerPoolNotificationFilterOrigin.fromMap((map['origin']! as Map).cast<String, dynamic>())),
      pool: pulumi.Input.fromValue(GetLoadBalancerPoolNotificationFilterPool.fromMap((map['pool']! as Map).cast<String, dynamic>())),
    );
  }
}
