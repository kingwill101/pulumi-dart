// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_monitors_result.dart';

/// Result data returned by getLoadBalancerMonitors.
class GetLoadBalancerMonitorsInvokeResult {
  /// Identifier.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetLoadBalancerMonitorsResult>? results;

  /// Creates a new [GetLoadBalancerMonitorsInvokeResult].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetLoadBalancerMonitorsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerMonitorsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetLoadBalancerMonitorsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerMonitorsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerMonitorsResult>(guardedValue, (value) => GetLoadBalancerMonitorsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
