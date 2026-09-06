// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_load_balancer_args_doc}
/// Arguments for getLoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_network_get_load_balancer_args_doc}
class GetLoadBalancerArgs {
  /// Expands referenced resources.
  final pulumi.Input<String?>? expand;
  /// The name of the load balancer.
  final pulumi.Input<String> loadBalancerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLoadBalancerArgs].
  /// [expand] Expands referenced resources.
  /// [loadBalancerName] The name of the load balancer.
  /// [resourceGroupName] The name of the resource group.
  const GetLoadBalancerArgs({
    this.expand,
    required this.loadBalancerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'loadBalancerName': loadBalancerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerName: pulumi.Input.fromValue(map['loadBalancerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
