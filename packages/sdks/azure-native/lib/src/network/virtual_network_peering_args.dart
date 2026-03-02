// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space.dart';
import 'sub_resource.dart';
import 'virtual_network_bgp_communities.dart';

/// {@template pulumi_network_virtual_network_peering_args_doc}
/// The set of arguments for VirtualNetworkPeering.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_network_peering_args_doc}
class VirtualNetworkPeeringArgs {
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
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Parameter indicates the intention to sync the peering with the current address space on the remote vNet after it's updated.
  final pulumi.Input<String>? syncRemoteAddressSpace;
  /// Resource type.
  final pulumi.Input<String>? type;
  /// If remote gateways can be used on this virtual network. If the flag is set to true, and allowGatewayTransit on remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway.
  final pulumi.Input<bool>? useRemoteGateways;
  /// The name of the virtual network.
  final pulumi.Input<String> virtualNetworkName;
  /// The name of the peering.
  final pulumi.Input<String>? virtualNetworkPeeringName;

  /// Creates a new [VirtualNetworkPeeringArgs].
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
  /// [resourceGroupName] The name of the resource group.
  /// [syncRemoteAddressSpace] Parameter indicates the intention to sync the peering with the current address space on the remote vNet after it's updated.
  /// [type] Resource type.
  /// [useRemoteGateways] If remote gateways can be used on this virtual network. If the flag is set to true, and allowGatewayTransit on remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway.
  /// [virtualNetworkName] The name of the virtual network.
  /// [virtualNetworkPeeringName] The name of the peering.
  VirtualNetworkPeeringArgs({
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
    required this.resourceGroupName,
    this.syncRemoteAddressSpace,
    this.type,
    this.useRemoteGateways,
    required this.virtualNetworkName,
    this.virtualNetworkPeeringName,
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
      'resourceGroupName': resourceGroupName,
      'syncRemoteAddressSpace': ?syncRemoteAddressSpace,
      'type': ?type,
      'useRemoteGateways': ?useRemoteGateways,
      'virtualNetworkName': virtualNetworkName,
      'virtualNetworkPeeringName': ?virtualNetworkPeeringName,
    };
  }

  factory VirtualNetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPeeringArgs(
      allowForwardedTraffic: map['allowForwardedTraffic'] == null ? null : (map['allowForwardedTraffic']! as bool).input(),
      allowGatewayTransit: map['allowGatewayTransit'] == null ? null : (map['allowGatewayTransit']! as bool).input(),
      allowVirtualNetworkAccess: map['allowVirtualNetworkAccess'] == null ? null : (map['allowVirtualNetworkAccess']! as bool).input(),
      doNotVerifyRemoteGateways: map['doNotVerifyRemoteGateways'] == null ? null : (map['doNotVerifyRemoteGateways']! as bool).input(),
      enableOnlyIPv6Peering: map['enableOnlyIPv6Peering'] == null ? null : (map['enableOnlyIPv6Peering']! as bool).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      localAddressSpace: map['localAddressSpace'] == null ? null : (AddressSpace.fromMap((map['localAddressSpace']! as Map).cast<String, dynamic>())).input(),
      localSubnetNames: map['localSubnetNames'] == null ? null : ((map['localSubnetNames']! as List).cast<String>()).input(),
      localVirtualNetworkAddressSpace: map['localVirtualNetworkAddressSpace'] == null ? null : (AddressSpace.fromMap((map['localVirtualNetworkAddressSpace']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      peerCompleteVnets: map['peerCompleteVnets'] == null ? null : (map['peerCompleteVnets']! as bool).input(),
      peeringState: map['peeringState'] == null ? null : (map['peeringState']! as String).input(),
      peeringSyncLevel: map['peeringSyncLevel'] == null ? null : (map['peeringSyncLevel']! as String).input(),
      remoteAddressSpace: map['remoteAddressSpace'] == null ? null : (AddressSpace.fromMap((map['remoteAddressSpace']! as Map).cast<String, dynamic>())).input(),
      remoteBgpCommunities: map['remoteBgpCommunities'] == null ? null : (VirtualNetworkBgpCommunities.fromMap((map['remoteBgpCommunities']! as Map).cast<String, dynamic>())).input(),
      remoteSubnetNames: map['remoteSubnetNames'] == null ? null : ((map['remoteSubnetNames']! as List).cast<String>()).input(),
      remoteVirtualNetwork: map['remoteVirtualNetwork'] == null ? null : (SubResource.fromMap((map['remoteVirtualNetwork']! as Map).cast<String, dynamic>())).input(),
      remoteVirtualNetworkAddressSpace: map['remoteVirtualNetworkAddressSpace'] == null ? null : (AddressSpace.fromMap((map['remoteVirtualNetworkAddressSpace']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      syncRemoteAddressSpace: map['syncRemoteAddressSpace'] == null ? null : (map['syncRemoteAddressSpace']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      useRemoteGateways: map['useRemoteGateways'] == null ? null : (map['useRemoteGateways']! as bool).input(),
      virtualNetworkName: (map['virtualNetworkName'] as String).input(),
      virtualNetworkPeeringName: map['virtualNetworkPeeringName'] == null ? null : (map['virtualNetworkPeeringName']! as String).input(),
    );
  }
}

