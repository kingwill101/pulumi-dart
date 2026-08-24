// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_load_balancer_monitor_group_get_load_balancer_monitor_group_args_doc}
/// Arguments for getLoadBalancerMonitorGroup.
/// {@endtemplate}
/// {@macro pulumi_index_get_load_balancer_monitor_group_get_load_balancer_monitor_group_args_doc}
class GetLoadBalancerMonitorGroupArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> monitorGroupId;

  /// Creates a new [GetLoadBalancerMonitorGroupArgs].
  /// [accountId] Identifier.
  /// [monitorGroupId] Required.
  const GetLoadBalancerMonitorGroupArgs({
    required this.accountId,
    required this.monitorGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'monitorGroupId': monitorGroupId,
    };
  }

  factory GetLoadBalancerMonitorGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerMonitorGroupArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      monitorGroupId: pulumi.Input.fromValue(map['monitorGroupId'] as String),
    );
  }
}
