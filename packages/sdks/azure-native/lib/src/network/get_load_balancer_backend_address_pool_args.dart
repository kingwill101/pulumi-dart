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
    required this.backendAddressPoolName,
    required this.loadBalancerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolName': backendAddressPoolName,
      'loadBalancerName': loadBalancerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLoadBalancerBackendAddressPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerBackendAddressPoolArgs(
      backendAddressPoolName: (map['backendAddressPoolName'] as String).input(),
      loadBalancerName: (map['loadBalancerName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

