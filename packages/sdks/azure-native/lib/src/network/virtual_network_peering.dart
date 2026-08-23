// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space.dart';
import 'sub_resource.dart';
import 'virtual_network_bgp_communities.dart';

/// Peerings in a virtual network resource.
class VirtualNetworkPeering {
  /// Whether the forwarded traffic from the VMs in the local virtual network will be allowed/disallowed in remote virtual network.
  final pulumi.Input<bool>? allowForwardedTraffic;
  /// If gateway links can be used in remote virtual networking to link to this virtual network.
  final pulumi.Input<bool>? allowGatewayTransit;
  /// Whether the VMs in the local virtual network space would be able to access the VMs in remote virtual network space.
  final pulumi.Input<bool>? allowVirtualNetworkAccess;
  /// If we need to verify the provisioning state of the remote gateway.
  final pulumi.Input<bool>? doNotVerifyRemoteGateways;
  /// Whether only Ipv6 address space is peered for subnet peering.
  final pulumi.Input<bool>? enableOnlyIPv6Peering;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The local address space of the local virtual network that is peered.
  final pulumi.Input<AddressSpace>? localAddressSpace;
  /// List of local subnet names that are subnet peered with remote virtual network.
  final pulumi.Input<List<String>>? localSubnetNames;
  /// The current local address space of the local virtual network that is peered.
  final pulumi.Input<AddressSpace>? localVirtualNetworkAddressSpace;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Whether complete virtual network address space is peered.
  final pulumi.Input<bool>? peerCompleteVnets;
  /// The status of the virtual network peering.
  final pulumi.Input<String>? peeringState;
  /// The peering sync status of the virtual network peering.
  final pulumi.Input<String>? peeringSyncLevel;
  /// The reference to the address space peered with the remote virtual network.
  final pulumi.Input<AddressSpace>? remoteAddressSpace;
  /// The reference to the remote virtual network's Bgp Communities.
  final pulumi.Input<VirtualNetworkBgpCommunities>? remoteBgpCommunities;
  /// List of remote subnet names from remote virtual network that are subnet peered.
  final pulumi.Input<List<String>>? remoteSubnetNames;
  /// The reference to the remote virtual network. The remote virtual network can be in the same or different region (preview). See here to register for the preview and learn more (https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-create-peering).
  final pulumi.Input<SubResource>? remoteVirtualNetwork;
  /// The reference to the current address space of the remote virtual network.
  final pulumi.Input<AddressSpace>? remoteVirtualNetworkAddressSpace;
  /// Resource type.
  final pulumi.Input<String>? type;
  /// If remote gateways can be used on this virtual network. If the flag is set to true, and allowGatewayTransit on remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway.
  final pulumi.Input<bool>? useRemoteGateways;

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
  const VirtualNetworkPeering({
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
      'localAddressSpace': ?pulumi.Input.mapOptionalInputValue<AddressSpace, Map<String, dynamic>>(localAddressSpace, (value) => value.toMap()),
      'localSubnetNames': ?localSubnetNames,
      'localVirtualNetworkAddressSpace': ?pulumi.Input.mapOptionalInputValue<AddressSpace, Map<String, dynamic>>(localVirtualNetworkAddressSpace, (value) => value.toMap()),
      'name': ?name,
      'peerCompleteVnets': ?peerCompleteVnets,
      'peeringState': ?peeringState,
      'peeringSyncLevel': ?peeringSyncLevel,
      'remoteAddressSpace': ?pulumi.Input.mapOptionalInputValue<AddressSpace, Map<String, dynamic>>(remoteAddressSpace, (value) => value.toMap()),
      'remoteBgpCommunities': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkBgpCommunities, Map<String, dynamic>>(remoteBgpCommunities, (value) => value.toMap()),
      'remoteSubnetNames': ?remoteSubnetNames,
      'remoteVirtualNetwork': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(remoteVirtualNetwork, (value) => value.toMap()),
      'remoteVirtualNetworkAddressSpace': ?pulumi.Input.mapOptionalInputValue<AddressSpace, Map<String, dynamic>>(remoteVirtualNetworkAddressSpace, (value) => value.toMap()),
      'type': ?type,
      'useRemoteGateways': ?useRemoteGateways,
    };
  }

  factory VirtualNetworkPeering.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPeering(
      allowForwardedTraffic: (() { final guardedValue = map['allowForwardedTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowGatewayTransit: (() { final guardedValue = map['allowGatewayTransit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowVirtualNetworkAccess: (() { final guardedValue = map['allowVirtualNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      doNotVerifyRemoteGateways: (() { final guardedValue = map['doNotVerifyRemoteGateways']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableOnlyIPv6Peering: (() { final guardedValue = map['enableOnlyIPv6Peering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localAddressSpace: (() { final guardedValue = map['localAddressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddressSpace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localSubnetNames: (() { final guardedValue = map['localSubnetNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      localVirtualNetworkAddressSpace: (() { final guardedValue = map['localVirtualNetworkAddressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddressSpace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerCompleteVnets: (() { final guardedValue = map['peerCompleteVnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      peeringState: (() { final guardedValue = map['peeringState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeringSyncLevel: (() { final guardedValue = map['peeringSyncLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteAddressSpace: (() { final guardedValue = map['remoteAddressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddressSpace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      remoteBgpCommunities: (() { final guardedValue = map['remoteBgpCommunities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkBgpCommunities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      remoteSubnetNames: (() { final guardedValue = map['remoteSubnetNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      remoteVirtualNetwork: (() { final guardedValue = map['remoteVirtualNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      remoteVirtualNetworkAddressSpace: (() { final guardedValue = map['remoteVirtualNetworkAddressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddressSpace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useRemoteGateways: (() { final guardedValue = map['useRemoteGateways']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
