// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_pools_result.dart';

/// Result data returned by getLoadBalancerPools.
class GetLoadBalancerPoolsInvokeResult {
  /// Identifier.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The ID of the Monitor to use for checking the health of origins within this pool.
  final String? monitor;
  /// The items returned by the data source
  final List<GetLoadBalancerPoolsResult>? results;

  /// Creates a new [GetLoadBalancerPoolsInvokeResult].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [monitor] The ID of the Monitor to use for checking the health of origins within this pool.
  /// [results] The items returned by the data source
  const GetLoadBalancerPoolsInvokeResult({
    this.accountId,
    this.maxItems,
    this.monitor,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'monitor': ?monitor,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerPoolsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetLoadBalancerPoolsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerPoolsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      monitor: (() { final guardedValue = map['monitor']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerPoolsResult>(guardedValue, (value) => GetLoadBalancerPoolsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
