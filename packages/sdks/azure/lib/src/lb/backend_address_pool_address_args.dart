// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_backend_address_pool_address_backend_address_pool_address_args_doc}
/// The set of arguments for BackendAddressPoolAddress.
/// {@endtemplate}
/// {@macro pulumi_lb_backend_address_pool_address_backend_address_pool_address_args_doc}
class BackendAddressPoolAddressArgs {
  /// The ip config ID of the regional load balancer that's added to the global load balancer's backend address pool.
  ///
  /// > **Note:** For cross-region load balancer, please append the name of the load balancers, virtual machines, and other resources in each region with a -R1 and -R2.
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
  BackendAddressPoolAddressArgs({
    pulumi.Output<String>? backendAddressIpConfigurationId,
    required pulumi.Output<String> backendAddressPoolId,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? name,
    pulumi.Output<String>? virtualNetworkId,
  }) :
      backendAddressIpConfigurationId = pulumi.Input.asOptionalInput<String>(backendAddressIpConfigurationId),
      backendAddressPoolId = pulumi.Input.asInput<String>(backendAddressPoolId),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      virtualNetworkId = pulumi.Input.asOptionalInput<String>(virtualNetworkId);

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
      backendAddressIpConfigurationId: map['backendAddressIpConfigurationId'] == null ? null : pulumi.Output.create<String>(map['backendAddressIpConfigurationId'] as String),
      backendAddressPoolId: pulumi.Output.create<String>(map['backendAddressPoolId'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkId'] as String),
    );
  }
}

