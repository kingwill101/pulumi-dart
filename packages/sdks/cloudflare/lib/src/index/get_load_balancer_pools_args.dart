// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_load_balancer_pools_get_load_balancer_pools_args_doc}
/// Arguments for getLoadBalancerPools.
/// {@endtemplate}
/// {@macro pulumi_index_get_load_balancer_pools_get_load_balancer_pools_args_doc}
class GetLoadBalancerPoolsArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// The ID of the Monitor to use for checking the health of origins within this pool.
  final pulumi.Input<String?>? monitor;

  /// Creates a new [GetLoadBalancerPoolsArgs].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [monitor] The ID of the Monitor to use for checking the health of origins within this pool.
  const GetLoadBalancerPoolsArgs({
    this.accountId,
    this.maxItems,
    this.monitor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'monitor': ?monitor,
    };
  }

  factory GetLoadBalancerPoolsArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerPoolsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      monitor: (() { final guardedValue = map['monitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
