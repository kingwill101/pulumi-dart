// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_backend_address_pool_address_backend_address_pool_address_args_doc}
/// The set of arguments for BackendAddressPoolAddress.
/// {@endtemplate}
/// {@macro pulumi_lb_backend_address_pool_address_backend_address_pool_address_args_doc}
class BackendAddressPoolAddressArgs {
  /// The ip config ID of the regional load balancer that's added to the global load balancer's backend address pool.
  ///
  /// &gt; **Note:** For cross-region load balancer, please append the name of the load balancers, virtual machines, and other resources in each region with a -R1 and -R2.
  final pulumi.Input<String>? backendAddressIpConfigurationId;
  /// The ID of the Backend Address Pool. Changing this forces a new Backend Address Pool Address to be created.
  final pulumi.Input<String> backendAddressPoolId;
  /// The Static IP Address which should be allocated to this Backend Address Pool.
  final pulumi.Input<String>? ipAddress;
  /// The name which should be used for this Backend Address Pool Address. Changing this forces a new Backend Address Pool Address to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Virtual Network within which the Backend Address Pool should exist.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [BackendAddressPoolAddressArgs].
  /// [backendAddressIpConfigurationId] The ip config ID of the regional load balancer that's added to the global load balancer's backend address pool.
  /// [backendAddressPoolId] The ID of the Backend Address Pool. Changing this forces a new Backend Address Pool Address to be created.
  /// [ipAddress] The Static IP Address which should be allocated to this Backend Address Pool.
  /// [name] The name which should be used for this Backend Address Pool Address. Changing this forces a new Backend Address Pool Address to be created.
  /// [virtualNetworkId] The ID of the Virtual Network within which the Backend Address Pool should exist.
  const BackendAddressPoolAddressArgs({
    this.backendAddressIpConfigurationId,
    required this.backendAddressPoolId,
    this.ipAddress,
    this.name,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressIpConfigurationId': ?backendAddressIpConfigurationId,
      'backendAddressPoolId': backendAddressPoolId,
      'ipAddress': ?ipAddress,
      'name': ?name,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory BackendAddressPoolAddressArgs.fromMap(Map<String, dynamic> map) {
    return BackendAddressPoolAddressArgs(
      backendAddressIpConfigurationId: (() { final guardedValue = map['backendAddressIpConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backendAddressPoolId: pulumi.Input.fromValue(map['backendAddressPoolId'] as String),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
