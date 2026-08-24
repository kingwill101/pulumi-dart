// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_load_balancer_monitor_get_load_balancer_monitor_args_doc}
/// Arguments for getLoadBalancerMonitor.
/// {@endtemplate}
/// {@macro pulumi_index_get_load_balancer_monitor_get_load_balancer_monitor_args_doc}
class GetLoadBalancerMonitorArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> monitorId;

  /// Creates a new [GetLoadBalancerMonitorArgs].
  /// [accountId] Identifier.
  /// [monitorId] Required.
  const GetLoadBalancerMonitorArgs({
    this.accountId,
    required this.monitorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'monitorId': monitorId,
    };
  }

  factory GetLoadBalancerMonitorArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerMonitorArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitorId: pulumi.Input.fromValue(map['monitorId'] as String),
    );
  }
}
