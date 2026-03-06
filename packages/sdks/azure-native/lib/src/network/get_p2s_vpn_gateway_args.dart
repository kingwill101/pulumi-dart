// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_p2s_vpn_gateway_args_doc}
/// Arguments for getP2sVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_network_get_p2s_vpn_gateway_args_doc}
class GetP2sVpnGatewayArgs {
  /// The name of the gateway.
  final pulumi.Input<String> gatewayName;
  /// The resource group name of the P2SVpnGateway.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetP2sVpnGatewayArgs].
  /// [gatewayName] The name of the gateway.
  /// [resourceGroupName] The resource group name of the P2SVpnGateway.
  const GetP2sVpnGatewayArgs({
    required this.gatewayName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayName': gatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetP2sVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetP2sVpnGatewayArgs(
      gatewayName: pulumi.Input.fromValue(map['gatewayName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

