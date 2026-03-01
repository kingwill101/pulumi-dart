// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualNetworkPeering resources.
class VirtualNetworkPeeringState {
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
  final pulumi.Input<String>? remoteVirtualNetworkId;
  /// The name of the resource group in which to create the virtual network peering. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of key values pairs that can be used to sync network routes from the remote virtual network to the local virtual network. See the trigger example for an example on how to set it up.
  final pulumi.Input<Map<String, String>>? triggers;
  /// Controls if remote gateways can be used on the local virtual network. If the flag is set to `true`, and `allow_gateway_transit` on the remote peering is also `true`, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to `true`. This flag cannot be set if virtual network already has a gateway. Defaults to `false`.
  ///
  /// > **Note:** `use_remote_gateways` must be set to `false` if using Global Virtual Network Peerings.
  final pulumi.Input<bool>? useRemoteGateways;
  /// The name of the virtual network. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualNetworkName;

  /// Creates a new [VirtualNetworkPeeringState].
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
  VirtualNetworkPeeringState({
    pulumi.Output<bool>? allowForwardedTraffic,
    pulumi.Output<bool>? allowGatewayTransit,
    pulumi.Output<bool>? allowVirtualNetworkAccess,
    pulumi.Output<List<String>>? localSubnetNames,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? onlyIpv6PeeringEnabled,
    pulumi.Output<bool>? peerCompleteVirtualNetworksEnabled,
    pulumi.Output<List<String>>? remoteSubnetNames,
    pulumi.Output<String>? remoteVirtualNetworkId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? triggers,
    pulumi.Output<bool>? useRemoteGateways,
    pulumi.Output<String>? virtualNetworkName,
  }) :
      allowForwardedTraffic = pulumi.Input.asOptionalInput<bool>(allowForwardedTraffic),
      allowGatewayTransit = pulumi.Input.asOptionalInput<bool>(allowGatewayTransit),
      allowVirtualNetworkAccess = pulumi.Input.asOptionalInput<bool>(allowVirtualNetworkAccess),
      localSubnetNames = pulumi.Input.asOptionalInput<List<String>>(localSubnetNames),
      name = pulumi.Input.asOptionalInput<String>(name),
      onlyIpv6PeeringEnabled = pulumi.Input.asOptionalInput<bool>(onlyIpv6PeeringEnabled),
      peerCompleteVirtualNetworksEnabled = pulumi.Input.asOptionalInput<bool>(peerCompleteVirtualNetworksEnabled),
      remoteSubnetNames = pulumi.Input.asOptionalInput<List<String>>(remoteSubnetNames),
      remoteVirtualNetworkId = pulumi.Input.asOptionalInput<String>(remoteVirtualNetworkId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers),
      useRemoteGateways = pulumi.Input.asOptionalInput<bool>(useRemoteGateways),
      virtualNetworkName = pulumi.Input.asOptionalInput<String>(virtualNetworkName);

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
      'remoteVirtualNetworkId': ?remoteVirtualNetworkId,
      'resourceGroupName': ?resourceGroupName,
      'triggers': ?triggers,
      'useRemoteGateways': ?useRemoteGateways,
      'virtualNetworkName': ?virtualNetworkName,
    };
  }

  factory VirtualNetworkPeeringState.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPeeringState(
      allowForwardedTraffic: map['allowForwardedTraffic'] == null ? null : pulumi.Output.create<bool>(map['allowForwardedTraffic'] as bool),
      allowGatewayTransit: map['allowGatewayTransit'] == null ? null : pulumi.Output.create<bool>(map['allowGatewayTransit'] as bool),
      allowVirtualNetworkAccess: map['allowVirtualNetworkAccess'] == null ? null : pulumi.Output.create<bool>(map['allowVirtualNetworkAccess'] as bool),
      localSubnetNames: map['localSubnetNames'] == null ? null : pulumi.Output.create<List<String>>((map['localSubnetNames'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      onlyIpv6PeeringEnabled: map['onlyIpv6PeeringEnabled'] == null ? null : pulumi.Output.create<bool>(map['onlyIpv6PeeringEnabled'] as bool),
      peerCompleteVirtualNetworksEnabled: map['peerCompleteVirtualNetworksEnabled'] == null ? null : pulumi.Output.create<bool>(map['peerCompleteVirtualNetworksEnabled'] as bool),
      remoteSubnetNames: map['remoteSubnetNames'] == null ? null : pulumi.Output.create<List<String>>((map['remoteSubnetNames'] as List).cast<String>()),
      remoteVirtualNetworkId: map['remoteVirtualNetworkId'] == null ? null : pulumi.Output.create<String>(map['remoteVirtualNetworkId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['triggers'] as Map).cast<String, String>()),
      useRemoteGateways: map['useRemoteGateways'] == null ? null : pulumi.Output.create<bool>(map['useRemoteGateways'] as bool),
      virtualNetworkName: map['virtualNetworkName'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkName'] as String),
    );
  }
}

