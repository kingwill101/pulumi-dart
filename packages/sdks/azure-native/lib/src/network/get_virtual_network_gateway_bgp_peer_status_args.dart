// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_gateway_bgp_peer_status_args_doc}
/// Arguments for getVirtualNetworkGatewayBgpPeerStatus.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_gateway_bgp_peer_status_args_doc}
class GetVirtualNetworkGatewayBgpPeerStatusArgs {
  /// The IP address of the peer to retrieve the status of.
  final pulumi.Input<String>? peer;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual network gateway.
  final pulumi.Input<String> virtualNetworkGatewayName;

  /// Creates a new [GetVirtualNetworkGatewayBgpPeerStatusArgs].
  /// [peer] The IP address of the peer to retrieve the status of.
  /// [resourceGroupName] The name of the resource group.
  /// [virtualNetworkGatewayName] The name of the virtual network gateway.
  const GetVirtualNetworkGatewayBgpPeerStatusArgs({
    this.peer,
    required this.resourceGroupName,
    required this.virtualNetworkGatewayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peer': ?peer,
      'resourceGroupName': resourceGroupName,
      'virtualNetworkGatewayName': virtualNetworkGatewayName,
    };
  }

  factory GetVirtualNetworkGatewayBgpPeerStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayBgpPeerStatusArgs(
      peer: (() { final guardedValue = map['peer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualNetworkGatewayName: pulumi.Input.fromValue(map['virtualNetworkGatewayName'] as String),
    );
  }
}
