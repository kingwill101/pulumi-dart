// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_load_balancer_monitors_get_load_balancer_monitors_args_doc}
/// Arguments for getLoadBalancerMonitors.
/// {@endtemplate}
/// {@macro pulumi_index_get_load_balancer_monitors_get_load_balancer_monitors_args_doc}
class GetLoadBalancerMonitorsArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetLoadBalancerMonitorsArgs].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  const GetLoadBalancerMonitorsArgs({
    this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetLoadBalancerMonitorsArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerMonitorsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
