// ignore_for_file: unused_element, unnecessary_cast

import 'address_space.dart';
import 'sub_resource.dart';
import 'virtual_network_bgp_communities.dart';

/// Peerings in a virtual network resource.
class VirtualNetworkPeering {
  /// Whether the forwarded traffic from the VMs in the local virtual network will be allowed/disallowed in remote virtual network.
  final bool? allowForwardedTraffic;
  /// If gateway links can be used in remote virtual networking to link to this virtual network.
  final bool? allowGatewayTransit;
  /// Whether the VMs in the local virtual network space would be able to access the VMs in remote virtual network space.
  final bool? allowVirtualNetworkAccess;
  /// If we need to verify the provisioning state of the remote gateway.
  final bool? doNotVerifyRemoteGateways;
  /// Whether only Ipv6 address space is peered for subnet peering.
  final bool? enableOnlyIPv6Peering;
  /// Resource ID.
  final String? id;
  /// The local address space of the local virtual network that is peered.
  final AddressSpace? localAddressSpace;
  /// List of local subnet names that are subnet peered with remote virtual network.
  final List<String>? localSubnetNames;
  /// The current local address space of the local virtual network that is peered.
  final AddressSpace? localVirtualNetworkAddressSpace;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Whether complete virtual network address space is peered.
  final bool? peerCompleteVnets;
  /// The status of the virtual network peering.
  final String? peeringState;
  /// The peering sync status of the virtual network peering.
  final String? peeringSyncLevel;
  /// The reference to the address space peered with the remote virtual network.
  final AddressSpace? remoteAddressSpace;
  /// The reference to the remote virtual network's Bgp Communities.
  final VirtualNetworkBgpCommunities? remoteBgpCommunities;
  /// List of remote subnet names from remote virtual network that are subnet peered.
  final List<String>? remoteSubnetNames;
  /// The reference to the remote virtual network. The remote virtual network can be in the same or different region (preview). See here to register for the preview and learn more (https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-create-peering).
  final SubResource? remoteVirtualNetwork;
  /// The reference to the current address space of the remote virtual network.
  final AddressSpace? remoteVirtualNetworkAddressSpace;
  /// Resource type.
  final String? type;
  /// If remote gateways can be used on this virtual network. If the flag is set to true, and allowGatewayTransit on remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway.
  final bool? useRemoteGateways;

  /// Creates a new [VirtualNetworkPeering].
  /// [allowForwardedTraffic] Whether the forwarded traffic from the VMs in the local virtual network will be allowed/disallowed in remote virtual network.
  /// [allowGatewayTransit] If gateway links can be used in remote virtual networking to link to this virtual network.
  /// [allowVirtualNetworkAccess] Whether the VMs in the local virtual network space would be able to access the VMs in remote virtual network space.
  /// [doNotVerifyRemoteGateways] If we need to verify the provisioning state of the remote gateway.
  /// [enableOnlyIPv6Peering] Whether only Ipv6 address space is peered for subnet peering.
  /// [id] Resource ID.
  /// [localAddressSpace] The local address space of the local virtual network that is peered.
  /// [localSubnetNames] List of local subnet names that are subnet peered with remote virtual network.
  /// [localVirtualNetworkAddressSpace] The current local address space of the local virtual network that is peered.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [peerCompleteVnets] Whether complete virtual network address space is peered.
  /// [peeringState] The status of the virtual network peering.
  /// [peeringSyncLevel] The peering sync status of the virtual network peering.
  /// [remoteAddressSpace] The reference to the address space peered with the remote virtual network.
  /// [remoteBgpCommunities] The reference to the remote virtual network's Bgp Communities.
  /// [remoteSubnetNames] List of remote subnet names from remote virtual network that are subnet peered.
  /// [remoteVirtualNetwork] The reference to the remote virtual network. The remote virtual network can be in the same or different region (preview). See here to register for the preview and learn more (https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-create-peering).
  /// [remoteVirtualNetworkAddressSpace] The reference to the current address space of the remote virtual network.
  /// [type] Resource type.
  /// [useRemoteGateways] If remote gateways can be used on this virtual network. If the flag is set to true, and allowGatewayTransit on remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway.
  VirtualNetworkPeering({
    this.allowForwardedTraffic,
    this.allowGatewayTransit,
    this.allowVirtualNetworkAccess,
    this.doNotVerifyRemoteGateways,
    this.enableOnlyIPv6Peering,
    this.id,
    this.localAddressSpace,
    this.localSubnetNames,
    this.localVirtualNetworkAddressSpace,
    this.name,
    this.peerCompleteVnets,
    this.peeringState,
    this.peeringSyncLevel,
    this.remoteAddressSpace,
    this.remoteBgpCommunities,
    this.remoteSubnetNames,
    this.remoteVirtualNetwork,
    this.remoteVirtualNetworkAddressSpace,
    this.type,
    this.useRemoteGateways,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowForwardedTraffic': ?allowForwardedTraffic,
      'allowGatewayTransit': ?allowGatewayTransit,
      'allowVirtualNetworkAccess': ?allowVirtualNetworkAccess,
      'doNotVerifyRemoteGateways': ?doNotVerifyRemoteGateways,
      'enableOnlyIPv6Peering': ?enableOnlyIPv6Peering,
      'id': ?id,
      'localAddressSpace': ?localAddressSpace == null ? null : localAddressSpace!.toMap(),
      'localSubnetNames': ?localSubnetNames,
      'localVirtualNetworkAddressSpace': ?localVirtualNetworkAddressSpace == null ? null : localVirtualNetworkAddressSpace!.toMap(),
      'name': ?name,
      'peerCompleteVnets': ?peerCompleteVnets,
      'peeringState': ?peeringState,
      'peeringSyncLevel': ?peeringSyncLevel,
      'remoteAddressSpace': ?remoteAddressSpace == null ? null : remoteAddressSpace!.toMap(),
      'remoteBgpCommunities': ?remoteBgpCommunities == null ? null : remoteBgpCommunities!.toMap(),
      'remoteSubnetNames': ?remoteSubnetNames,
      'remoteVirtualNetwork': ?remoteVirtualNetwork == null ? null : remoteVirtualNetwork!.toMap(),
      'remoteVirtualNetworkAddressSpace': ?remoteVirtualNetworkAddressSpace == null ? null : remoteVirtualNetworkAddressSpace!.toMap(),
      'type': ?type,
      'useRemoteGateways': ?useRemoteGateways,
    };
  }

  factory VirtualNetworkPeering.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPeering(
      allowForwardedTraffic: map['allowForwardedTraffic'] == null ? null : map['allowForwardedTraffic'] as bool,
      allowGatewayTransit: map['allowGatewayTransit'] == null ? null : map['allowGatewayTransit'] as bool,
      allowVirtualNetworkAccess: map['allowVirtualNetworkAccess'] == null ? null : map['allowVirtualNetworkAccess'] as bool,
      doNotVerifyRemoteGateways: map['doNotVerifyRemoteGateways'] == null ? null : map['doNotVerifyRemoteGateways'] as bool,
      enableOnlyIPv6Peering: map['enableOnlyIPv6Peering'] == null ? null : map['enableOnlyIPv6Peering'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      localAddressSpace: map['localAddressSpace'] == null ? null : AddressSpace.fromMap((map['localAddressSpace'] as Map).cast<String, dynamic>()),
      localSubnetNames: map['localSubnetNames'] == null ? null : (map['localSubnetNames'] as List).cast<String>(),
      localVirtualNetworkAddressSpace: map['localVirtualNetworkAddressSpace'] == null ? null : AddressSpace.fromMap((map['localVirtualNetworkAddressSpace'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      peerCompleteVnets: map['peerCompleteVnets'] == null ? null : map['peerCompleteVnets'] as bool,
      peeringState: map['peeringState'] == null ? null : map['peeringState'] as String,
      peeringSyncLevel: map['peeringSyncLevel'] == null ? null : map['peeringSyncLevel'] as String,
      remoteAddressSpace: map['remoteAddressSpace'] == null ? null : AddressSpace.fromMap((map['remoteAddressSpace'] as Map).cast<String, dynamic>()),
      remoteBgpCommunities: map['remoteBgpCommunities'] == null ? null : VirtualNetworkBgpCommunities.fromMap((map['remoteBgpCommunities'] as Map).cast<String, dynamic>()),
      remoteSubnetNames: map['remoteSubnetNames'] == null ? null : (map['remoteSubnetNames'] as List).cast<String>(),
      remoteVirtualNetwork: map['remoteVirtualNetwork'] == null ? null : SubResource.fromMap((map['remoteVirtualNetwork'] as Map).cast<String, dynamic>()),
      remoteVirtualNetworkAddressSpace: map['remoteVirtualNetworkAddressSpace'] == null ? null : AddressSpace.fromMap((map['remoteVirtualNetworkAddressSpace'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
      useRemoteGateways: map['useRemoteGateways'] == null ? null : map['useRemoteGateways'] as bool,
    );
  }
}

