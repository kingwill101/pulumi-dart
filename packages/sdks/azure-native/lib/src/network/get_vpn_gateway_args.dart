// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_vpn_gateway_args_doc}
/// Arguments for getVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_network_get_vpn_gateway_args_doc}
class GetVpnGatewayArgs {
  /// The name of the gateway.
  final pulumi.Input<String> gatewayName;
  /// The resource group name of the VpnGateway.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVpnGatewayArgs].
  /// [gatewayName] The name of the gateway.
  /// [resourceGroupName] The resource group name of the VpnGateway.
  GetVpnGatewayArgs({
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

  factory GetVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayArgs(
      gatewayName: pulumi.Output.create<String>(map['gatewayName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

