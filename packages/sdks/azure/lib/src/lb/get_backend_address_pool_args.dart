// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_get_backend_address_pool_get_backend_address_pool_args_doc}
/// Arguments for getBackendAddressPool.
/// {@endtemplate}
/// {@macro pulumi_lb_get_backend_address_pool_get_backend_address_pool_args_doc}
class GetBackendAddressPoolArgs {
  /// The ID of the Load Balancer in which the Backend Address Pool exists.
  final pulumi.Input<String> loadbalancerId;
  /// Specifies the name of the Backend Address Pool.
  final pulumi.Input<String> name;

  /// Creates a new [GetBackendAddressPoolArgs].
  /// [loadbalancerId] The ID of the Load Balancer in which the Backend Address Pool exists.
  /// [name] Specifies the name of the Backend Address Pool.
  const GetBackendAddressPoolArgs({
    required this.loadbalancerId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadbalancerId': loadbalancerId,
      'name': name,
    };
  }

  factory GetBackendAddressPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendAddressPoolArgs(
      loadbalancerId: pulumi.Input.fromValue(map['loadbalancerId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
