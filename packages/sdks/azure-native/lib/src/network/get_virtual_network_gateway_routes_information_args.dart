// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_gateway_routes_information_args_doc}
/// Arguments for getVirtualNetworkGatewayRoutesInformation.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_gateway_routes_information_args_doc}
class GetVirtualNetworkGatewayRoutesInformationArgs {
  /// Attempt to recalculate the Route Sets Information for the gateway
  final pulumi.Input<bool>? attemptRefresh;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the virtual network gateway.
  final pulumi.Input<String> virtualNetworkGatewayName;

  /// Creates a new [GetVirtualNetworkGatewayRoutesInformationArgs].
  /// [attemptRefresh] Attempt to recalculate the Route Sets Information for the gateway
  /// [resourceGroupName] The name of the resource group.
  /// [virtualNetworkGatewayName] The name of the virtual network gateway.
  GetVirtualNetworkGatewayRoutesInformationArgs({
    this.attemptRefresh,
    required this.resourceGroupName,
    required this.virtualNetworkGatewayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attemptRefresh': ?attemptRefresh,
      'resourceGroupName': resourceGroupName,
      'virtualNetworkGatewayName': virtualNetworkGatewayName,
    };
  }

  factory GetVirtualNetworkGatewayRoutesInformationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNetworkGatewayRoutesInformationArgs(
      attemptRefresh: (() {
        final guardedValue = map['attemptRefresh'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      virtualNetworkGatewayName: pulumi.Input.fromValue(
        map['virtualNetworkGatewayName'] as String,
      ),
    );
  }
}
