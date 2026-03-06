// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_gateway_vpnclient_connection_health_args_doc}
/// Arguments for getVirtualNetworkGatewayVpnclientConnectionHealth.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_gateway_vpnclient_connection_health_args_doc}
class GetVirtualNetworkGatewayVpnclientConnectionHealthArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual network gateway.
  final pulumi.Input<String> virtualNetworkGatewayName;

  /// Creates a new [GetVirtualNetworkGatewayVpnclientConnectionHealthArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [virtualNetworkGatewayName] The name of the virtual network gateway.
  const GetVirtualNetworkGatewayVpnclientConnectionHealthArgs({
    required this.resourceGroupName,
    required this.virtualNetworkGatewayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualNetworkGatewayName': virtualNetworkGatewayName,
    };
  }

  factory GetVirtualNetworkGatewayVpnclientConnectionHealthArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayVpnclientConnectionHealthArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualNetworkGatewayName: pulumi.Input.fromValue(map['virtualNetworkGatewayName'] as String),
    );
  }
}

