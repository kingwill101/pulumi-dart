// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_virtual_network_peering_virtual_network_peering_args_doc}
/// The set of arguments for VirtualNetworkPeering.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_network_peering_virtual_network_peering_args_doc}
class VirtualNetworkPeeringArgs {
  /// Controls if forwarded traffic from VMs in the remote virtual network is allowed. Defaults to `false`.
  final pulumi.Input<bool>? allowForwardedTraffic;
  /// Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. Defaults to `false`.
  final pulumi.Input<bool>? allowGatewayTransit;
  /// Controls if the traffic from the local virtual network can reach the remote virtual network. Defaults to `true`.
  final pulumi.Input<bool>? allowVirtualNetworkAccess;
  /// A list of local Subnet names that are Subnet peered with remote Virtual Network.
  final pulumi.Input<List<String>>? localSubnetNames;
  /// The name of the virtual network peering. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies whether only IPv6 address space is peered for Subnet peering. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? onlyIpv6PeeringEnabled;
  /// Specifies whether complete Virtual Network address space is peered. Defaults to `true`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? peerCompleteVirtualNetworksEnabled;
  /// A list of remote Subnet names from remote Virtual Network that are Subnet peered.
  final pulumi.Input<List<String>>? remoteSubnetNames;
  /// The full Azure resource ID of the remote virtual network. Changing this forces a new resource to be created.
  final pulumi.Input<String> remoteVirtualNetworkId;
  /// The name of the resource group in which to create the virtual network peering. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of key values pairs that can be used to sync network routes from the remote virtual network to the local virtual network. See the trigger example for an example on how to set it up.
  final pulumi.Input<Map<String, String>>? triggers;
  /// Controls if remote gateways can be used on the local virtual network. If the flag is set to `true`, and `allow_gateway_transit` on the remote peering is also `true`, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to `true`. This flag cannot be set if virtual network already has a gateway. Defaults to `false`.
  ///
  /// &gt; **Note:** `use_remote_gateways` must be set to `false` if using Global Virtual Network Peerings.
  final pulumi.Input<bool>? useRemoteGateways;
  /// The name of the virtual network. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [VirtualNetworkPeeringArgs].
  /// [allowForwardedTraffic] Controls if forwarded traffic from VMs in the remote virtual network is allowed. Defaults to `false`.
  /// [allowGatewayTransit] Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. Defaults to `false`.
  /// [allowVirtualNetworkAccess] Controls if the traffic from the local virtual network can reach the remote virtual network. Defaults to `true`.
  /// [localSubnetNames] A list of local Subnet names that are Subnet peered with remote Virtual Network.
  /// [name] The name of the virtual network peering. Changing this forces a new resource to be created.
  /// [onlyIpv6PeeringEnabled] Specifies whether only IPv6 address space is peered for Subnet peering. Changing this forces a new resource to be created.
  /// [peerCompleteVirtualNetworksEnabled] Specifies whether complete Virtual Network address space is peered. Defaults to `true`. Changing this forces a new resource to be created.
  /// [remoteSubnetNames] A list of remote Subnet names from remote Virtual Network that are Subnet peered.
  /// [remoteVirtualNetworkId] The full Azure resource ID of the remote virtual network. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the virtual network peering. Changing this forces a new resource to be created.
  /// [triggers] A mapping of key values pairs that can be used to sync network routes from the remote virtual network to the local virtual network. See the trigger example for an example on how to set it up.
  /// [useRemoteGateways] Controls if remote gateways can be used on the local virtual network. If the flag is set to `true`, and `allow_gateway_transit` on the remote peering is also `true`, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to `true`. This flag cannot be set if virtual network already has a gateway. Defaults to `false`.
  /// [virtualNetworkName] The name of the virtual network. Changing this forces a new resource to be created.
  const VirtualNetworkPeeringArgs({
    this.allowForwardedTraffic,
    this.allowGatewayTransit,
    this.allowVirtualNetworkAccess,
    this.localSubnetNames,
    this.name,
    this.onlyIpv6PeeringEnabled,
    this.peerCompleteVirtualNetworksEnabled,
    this.remoteSubnetNames,
    required this.remoteVirtualNetworkId,
    required this.resourceGroupName,
    this.triggers,
    this.useRemoteGateways,
    required this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowForwardedTraffic': ?allowForwardedTraffic,
      'allowGatewayTransit': ?allowGatewayTransit,
      'allowVirtualNetworkAccess': ?allowVirtualNetworkAccess,
      'localSubnetNames': ?localSubnetNames,
      'name': ?name,
      'onlyIpv6PeeringEnabled': ?onlyIpv6PeeringEnabled,
      'peerCompleteVirtualNetworksEnabled': ?peerCompleteVirtualNetworksEnabled,
      'remoteSubnetNames': ?remoteSubnetNames,
      'remoteVirtualNetworkId': remoteVirtualNetworkId,
      'resourceGroupName': resourceGroupName,
      'triggers': ?triggers,
      'useRemoteGateways': ?useRemoteGateways,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory VirtualNetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPeeringArgs(
      allowForwardedTraffic: (() { final guardedValue = map['allowForwardedTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowGatewayTransit: (() { final guardedValue = map['allowGatewayTransit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowVirtualNetworkAccess: (() { final guardedValue = map['allowVirtualNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      localSubnetNames: (() { final guardedValue = map['localSubnetNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onlyIpv6PeeringEnabled: (() { final guardedValue = map['onlyIpv6PeeringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      peerCompleteVirtualNetworksEnabled: (() { final guardedValue = map['peerCompleteVirtualNetworksEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      remoteSubnetNames: (() { final guardedValue = map['remoteSubnetNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      remoteVirtualNetworkId: pulumi.Input.fromValue(map['remoteVirtualNetworkId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      useRemoteGateways: (() { final guardedValue = map['useRemoteGateways']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      virtualNetworkName: pulumi.Input.fromValue(map['virtualNetworkName'] as String),
    );
  }
}

