// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_p2s_vpn_gateway_p2s_vpn_connection_health_args_doc}
/// Arguments for getP2sVpnGatewayP2sVpnConnectionHealth.
/// {@endtemplate}
/// {@macro pulumi_network_get_p2s_vpn_gateway_p2s_vpn_connection_health_args_doc}
class GetP2sVpnGatewayP2sVpnConnectionHealthArgs {
  /// The name of the P2SVpnGateway.
  final pulumi.Input<String> gatewayName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetP2sVpnGatewayP2sVpnConnectionHealthArgs].
  /// [gatewayName] The name of the P2SVpnGateway.
  /// [resourceGroupName] The name of the resource group.
  GetP2sVpnGatewayP2sVpnConnectionHealthArgs({
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

  factory GetP2sVpnGatewayP2sVpnConnectionHealthArgs.fromMap(Map<String, dynamic> map) {
    return GetP2sVpnGatewayP2sVpnConnectionHealthArgs(
      gatewayName: pulumi.Output.create<String>(map['gatewayName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

