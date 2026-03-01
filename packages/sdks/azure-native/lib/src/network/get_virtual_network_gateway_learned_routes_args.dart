// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_gateway_learned_routes_args_doc}
/// Arguments for getVirtualNetworkGatewayLearnedRoutes.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_gateway_learned_routes_args_doc}
class GetVirtualNetworkGatewayLearnedRoutesArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual network gateway.
  final pulumi.Input<String> virtualNetworkGatewayName;

  /// Creates a new [GetVirtualNetworkGatewayLearnedRoutesArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [virtualNetworkGatewayName] The name of the virtual network gateway.
  GetVirtualNetworkGatewayLearnedRoutesArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualNetworkGatewayName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkGatewayName = pulumi.Input.asInput<String>(virtualNetworkGatewayName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualNetworkGatewayName': virtualNetworkGatewayName,
    };
  }

  factory GetVirtualNetworkGatewayLearnedRoutesArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayLearnedRoutesArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualNetworkGatewayName: pulumi.Output.create<String>(map['virtualNetworkGatewayName'] as String),
    );
  }
}

