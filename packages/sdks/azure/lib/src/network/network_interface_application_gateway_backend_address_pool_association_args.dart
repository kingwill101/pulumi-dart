// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_interface_application_gateway_backend_address_pool_association_network_interface_application_gateway_backend_address_pool_association_args_doc}
/// The set of arguments for NetworkInterfaceApplicationGatewayBackendAddressPoolAssociation.
/// {@endtemplate}
/// {@macro pulumi_network_network_interface_application_gateway_backend_address_pool_association_network_interface_application_gateway_backend_address_pool_association_args_doc}
class NetworkInterfaceApplicationGatewayBackendAddressPoolAssociationArgs {
  /// The ID of the Application Gateway's Backend Address Pool which this Network Interface which should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String> backendAddressPoolId;

  /// The Name of the IP Configuration within the Network Interface which should be connected to the Backend Address Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String> ipConfigurationName;

  /// The ID of the Network Interface. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkInterfaceId;

  /// Creates a new [NetworkInterfaceApplicationGatewayBackendAddressPoolAssociationArgs].
  /// [backendAddressPoolId] The ID of the Application Gateway's Backend Address Pool which this Network Interface which should be connected to. Changing this forces a new resource to be created.
  /// [ipConfigurationName] The Name of the IP Configuration within the Network Interface which should be connected to the Backend Address Pool. Changing this forces a new resource to be created.
  /// [networkInterfaceId] The ID of the Network Interface. Changing this forces a new resource to be created.
  NetworkInterfaceApplicationGatewayBackendAddressPoolAssociationArgs({
    required this.backendAddressPoolId,
    required this.ipConfigurationName,
    required this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolId': backendAddressPoolId,
      'ipConfigurationName': ipConfigurationName,
      'networkInterfaceId': networkInterfaceId,
    };
  }

  factory NetworkInterfaceApplicationGatewayBackendAddressPoolAssociationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInterfaceApplicationGatewayBackendAddressPoolAssociationArgs(
      backendAddressPoolId: pulumi.Input.fromValue(
        map['backendAddressPoolId'] as String,
      ),
      ipConfigurationName: pulumi.Input.fromValue(
        map['ipConfigurationName'] as String,
      ),
      networkInterfaceId: pulumi.Input.fromValue(
        map['networkInterfaceId'] as String,
      ),
    );
  }
}
