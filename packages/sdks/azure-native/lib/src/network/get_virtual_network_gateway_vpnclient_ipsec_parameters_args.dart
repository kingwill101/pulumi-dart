// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_gateway_vpnclient_ipsec_parameters_args_doc}
/// Arguments for getVirtualNetworkGatewayVpnclientIpsecParameters.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_gateway_vpnclient_ipsec_parameters_args_doc}
class GetVirtualNetworkGatewayVpnclientIpsecParametersArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The virtual network gateway name.
  final pulumi.Input<String> virtualNetworkGatewayName;

  /// Creates a new [GetVirtualNetworkGatewayVpnclientIpsecParametersArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [virtualNetworkGatewayName] The virtual network gateway name.
  GetVirtualNetworkGatewayVpnclientIpsecParametersArgs({
    required this.resourceGroupName,
    required this.virtualNetworkGatewayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualNetworkGatewayName': virtualNetworkGatewayName,
    };
  }

  factory GetVirtualNetworkGatewayVpnclientIpsecParametersArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayVpnclientIpsecParametersArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      virtualNetworkGatewayName: (map['virtualNetworkGatewayName'] as String).input(),
    );
  }
}

