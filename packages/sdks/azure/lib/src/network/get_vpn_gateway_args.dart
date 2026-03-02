// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_vpn_gateway_get_vpn_gateway_args_doc}
/// Arguments for getVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_network_get_vpn_gateway_get_vpn_gateway_args_doc}
class GetVpnGatewayArgs {
  /// The Name of the VPN Gateway.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the VPN Gateway exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVpnGatewayArgs].
  /// [name] The Name of the VPN Gateway.
  /// [resourceGroupName] The name of the Resource Group where the VPN Gateway exists.
  GetVpnGatewayArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

