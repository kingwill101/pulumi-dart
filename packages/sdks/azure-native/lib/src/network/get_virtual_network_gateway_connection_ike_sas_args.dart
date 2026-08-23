// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_gateway_connection_ike_sas_args_doc}
/// Arguments for getVirtualNetworkGatewayConnectionIkeSas.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_gateway_connection_ike_sas_args_doc}
class GetVirtualNetworkGatewayConnectionIkeSasArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual network gateway Connection.
  final pulumi.Input<String> virtualNetworkGatewayConnectionName;

  /// Creates a new [GetVirtualNetworkGatewayConnectionIkeSasArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [virtualNetworkGatewayConnectionName] The name of the virtual network gateway Connection.
  const GetVirtualNetworkGatewayConnectionIkeSasArgs({
    required this.resourceGroupName,
    required this.virtualNetworkGatewayConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualNetworkGatewayConnectionName': virtualNetworkGatewayConnectionName,
    };
  }

  factory GetVirtualNetworkGatewayConnectionIkeSasArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayConnectionIkeSasArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualNetworkGatewayConnectionName: pulumi.Input.fromValue(map['virtualNetworkGatewayConnectionName'] as String),
    );
  }
}
