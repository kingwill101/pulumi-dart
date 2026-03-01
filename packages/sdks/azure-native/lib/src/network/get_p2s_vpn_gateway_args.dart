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
  GetP2sVpnGatewayArgs({
    required pulumi.Output<String> gatewayName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      gatewayName = pulumi.Input.asInput<String>(gatewayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayName': gatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetP2sVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetP2sVpnGatewayArgs(
      gatewayName: pulumi.Output.create<String>(map['gatewayName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

