// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_pools_result_notification_filter_origin.dart';
import 'get_load_balancer_pools_result_notification_filter_pool.dart';

class GetLoadBalancerPoolsResultNotificationFilter {
  /// Filter options for a particular resource type (pool or origin). Use null to reset.
  final pulumi.Input<GetLoadBalancerPoolsResultNotificationFilterOrigin> origin;
  /// Filter options for a particular resource type (pool or origin). Use null to reset.
  final pulumi.Input<GetLoadBalancerPoolsResultNotificationFilterPool> pool;

  /// Creates a new [GetLoadBalancerPoolsResultNotificationFilter].
  /// [origin] Filter options for a particular resource type (pool or origin). Use null to reset.
  /// [pool] Filter options for a particular resource type (pool or origin). Use null to reset.
  const GetLoadBalancerPoolsResultNotificationFilter({
    required this.origin,
    required this.pool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'origin': pulumi.Input.mapInputValue<GetLoadBalancerPoolsResultNotificationFilterOrigin, Map<String, dynamic>>(origin, (value) => value.toMap()),
      'pool': pulumi.Input.mapInputValue<GetLoadBalancerPoolsResultNotificationFilterPool, Map<String, dynamic>>(pool, (value) => value.toMap()),
    };
  }

  factory GetLoadBalancerPoolsResultNotificationFilter.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerPoolsResultNotificationFilter(
      origin: pulumi.Input.fromValue(GetLoadBalancerPoolsResultNotificationFilterOrigin.fromMap((map['origin']! as Map).cast<String, dynamic>())),
      pool: pulumi.Input.fromValue(GetLoadBalancerPoolsResultNotificationFilterPool.fromMap((map['pool']! as Map).cast<String, dynamic>())),
    );
  }
}
