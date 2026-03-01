// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_load_balancer_args_doc}
/// Arguments for getLoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_network_get_load_balancer_args_doc}
class GetLoadBalancerArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the load balancer.
  final pulumi.Input<String> loadBalancerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLoadBalancerArgs].
  /// [expand] Expands referenced resources.
  /// [loadBalancerName] The name of the load balancer.
  /// [resourceGroupName] The name of the resource group.
  GetLoadBalancerArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> loadBalancerName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      loadBalancerName = pulumi.Input.asInput<String>(loadBalancerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'loadBalancerName': loadBalancerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      loadBalancerName: pulumi.Output.create<String>(map['loadBalancerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

