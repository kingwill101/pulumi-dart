// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_pool_filter.dart';

/// {@template pulumi_index_get_load_balancer_pool_get_load_balancer_pool_args_doc}
/// Arguments for getLoadBalancerPool.
/// {@endtemplate}
/// {@macro pulumi_index_get_load_balancer_pool_get_load_balancer_pool_args_doc}
class GetLoadBalancerPoolArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetLoadBalancerPoolFilter?>? filter;
  final pulumi.Input<String?>? poolId;

  /// Creates a new [GetLoadBalancerPoolArgs].
  /// [accountId] Identifier.
  /// [filter] Optional.
  /// [poolId] Optional.
  const GetLoadBalancerPoolArgs({
    this.accountId,
    this.filter,
    this.poolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetLoadBalancerPoolFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'poolId': ?poolId,
    };
  }

  factory GetLoadBalancerPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerPoolArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetLoadBalancerPoolFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      poolId: (() { final guardedValue = map['poolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
