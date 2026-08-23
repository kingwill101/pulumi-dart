// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_local_network_gateway_args_doc}
/// Arguments for getLocalNetworkGateway.
/// {@endtemplate}
/// {@macro pulumi_network_get_local_network_gateway_args_doc}
class GetLocalNetworkGatewayArgs {
  /// The name of the local network gateway.
  final pulumi.Input<String> localNetworkGatewayName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLocalNetworkGatewayArgs].
  /// [localNetworkGatewayName] The name of the local network gateway.
  /// [resourceGroupName] The name of the resource group.
  const GetLocalNetworkGatewayArgs({
    required this.localNetworkGatewayName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localNetworkGatewayName': localNetworkGatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLocalNetworkGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalNetworkGatewayArgs(
      localNetworkGatewayName: pulumi.Input.fromValue(map['localNetworkGatewayName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
