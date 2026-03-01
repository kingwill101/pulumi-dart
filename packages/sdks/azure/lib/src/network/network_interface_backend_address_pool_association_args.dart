// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_interface_backend_address_pool_association_network_interface_backend_address_pool_association_args_doc}
/// The set of arguments for NetworkInterfaceBackendAddressPoolAssociation.
/// {@endtemplate}
/// {@macro pulumi_network_network_interface_backend_address_pool_association_network_interface_backend_address_pool_association_args_doc}
class NetworkInterfaceBackendAddressPoolAssociationArgs {
  /// The ID of the Load Balancer Backend Address Pool which this Network Interface should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String> backendAddressPoolId;
  /// The Name of the IP Configuration within the Network Interface which should be connected to the Backend Address Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String> ipConfigurationName;
  /// The ID of the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkInterfaceId;

  /// Creates a new [NetworkInterfaceBackendAddressPoolAssociationArgs].
  /// [backendAddressPoolId] The ID of the Load Balancer Backend Address Pool which this Network Interface should be connected to. Changing this forces a new resource to be created.
  /// [ipConfigurationName] The Name of the IP Configuration within the Network Interface which should be connected to the Backend Address Pool. Changing this forces a new resource to be created.
  /// [networkInterfaceId] The ID of the Network Interface. Changing this forces a new resource to be created.
  NetworkInterfaceBackendAddressPoolAssociationArgs({
    required pulumi.Output<String> backendAddressPoolId,
    required pulumi.Output<String> ipConfigurationName,
    required pulumi.Output<String> networkInterfaceId,
  }) :
      backendAddressPoolId = pulumi.Input.asInput<String>(backendAddressPoolId),
      ipConfigurationName = pulumi.Input.asInput<String>(ipConfigurationName),
      networkInterfaceId = pulumi.Input.asInput<String>(networkInterfaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolId': backendAddressPoolId,
      'ipConfigurationName': ipConfigurationName,
      'networkInterfaceId': networkInterfaceId,
    };
  }

  factory NetworkInterfaceBackendAddressPoolAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceBackendAddressPoolAssociationArgs(
      backendAddressPoolId: pulumi.Output.create<String>(map['backendAddressPoolId'] as String),
      ipConfigurationName: pulumi.Output.create<String>(map['ipConfigurationName'] as String),
      networkInterfaceId: pulumi.Output.create<String>(map['networkInterfaceId'] as String),
    );
  }
}

