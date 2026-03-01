// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_load_balancer_backend_address_pool_args_doc}
/// Arguments for getLoadBalancerBackendAddressPool.
/// {@endtemplate}
/// {@macro pulumi_network_get_load_balancer_backend_address_pool_args_doc}
class GetLoadBalancerBackendAddressPoolArgs {
  /// The name of the backend address pool.
  final pulumi.Input<String> backendAddressPoolName;
  /// The name of the load balancer.
  final pulumi.Input<String> loadBalancerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLoadBalancerBackendAddressPoolArgs].
  /// [backendAddressPoolName] The name of the backend address pool.
  /// [loadBalancerName] The name of the load balancer.
  /// [resourceGroupName] The name of the resource group.
  GetLoadBalancerBackendAddressPoolArgs({
    required pulumi.Output<String> backendAddressPoolName,
    required pulumi.Output<String> loadBalancerName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      backendAddressPoolName = pulumi.Input.asInput<String>(backendAddressPoolName),
      loadBalancerName = pulumi.Input.asInput<String>(loadBalancerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolName': backendAddressPoolName,
      'loadBalancerName': loadBalancerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLoadBalancerBackendAddressPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerBackendAddressPoolArgs(
      backendAddressPoolName: pulumi.Output.create<String>(map['backendAddressPoolName'] as String),
      loadBalancerName: pulumi.Output.create<String>(map['loadBalancerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

