// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_gateway_connection_args_doc}
/// Arguments for getVirtualNetworkGatewayConnection.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_gateway_connection_args_doc}
class GetVirtualNetworkGatewayConnectionArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the virtual network gateway connection.
  final pulumi.Input<String> virtualNetworkGatewayConnectionName;

  /// Creates a new [GetVirtualNetworkGatewayConnectionArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [virtualNetworkGatewayConnectionName] The name of the virtual network gateway connection.
  GetVirtualNetworkGatewayConnectionArgs({
    required this.resourceGroupName,
    required this.virtualNetworkGatewayConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualNetworkGatewayConnectionName':
          virtualNetworkGatewayConnectionName,
    };
  }

  factory GetVirtualNetworkGatewayConnectionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNetworkGatewayConnectionArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      virtualNetworkGatewayConnectionName: pulumi.Input.fromValue(
        map['virtualNetworkGatewayConnectionName'] as String,
      ),
    );
  }
}
