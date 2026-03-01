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
  GetVirtualNetworkGatewayConnectionIkeSasArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualNetworkGatewayConnectionName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkGatewayConnectionName = pulumi.Input.asInput<String>(virtualNetworkGatewayConnectionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualNetworkGatewayConnectionName': virtualNetworkGatewayConnectionName,
    };
  }

  factory GetVirtualNetworkGatewayConnectionIkeSasArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayConnectionIkeSasArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualNetworkGatewayConnectionName: pulumi.Output.create<String>(map['virtualNetworkGatewayConnectionName'] as String),
    );
  }
}

