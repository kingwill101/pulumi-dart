// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_monitor_groups_result.dart';

/// Result data returned by getLoadBalancerMonitorGroups.
class GetLoadBalancerMonitorGroupsInvokeResult {
  /// Identifier.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetLoadBalancerMonitorGroupsResult>? results;

  /// Creates a new [GetLoadBalancerMonitorGroupsInvokeResult].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetLoadBalancerMonitorGroupsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerMonitorGroupsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetLoadBalancerMonitorGroupsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerMonitorGroupsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerMonitorGroupsResult>(guardedValue, (value) => GetLoadBalancerMonitorGroupsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
