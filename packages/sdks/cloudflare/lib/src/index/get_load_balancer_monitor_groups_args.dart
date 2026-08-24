// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_load_balancer_monitor_groups_get_load_balancer_monitor_groups_args_doc}
/// Arguments for getLoadBalancerMonitorGroups.
/// {@endtemplate}
/// {@macro pulumi_index_get_load_balancer_monitor_groups_get_load_balancer_monitor_groups_args_doc}
class GetLoadBalancerMonitorGroupsArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetLoadBalancerMonitorGroupsArgs].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  const GetLoadBalancerMonitorGroupsArgs({
    required this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetLoadBalancerMonitorGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerMonitorGroupsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
